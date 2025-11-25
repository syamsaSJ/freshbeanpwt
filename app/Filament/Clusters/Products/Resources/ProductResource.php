<?php

namespace App\Filament\Clusters\Products\Resources;

use App\Filament\Clusters\Products;
use App\Filament\Clusters\Products\Resources\ProductResource\Pages;
use App\Filament\Clusters\Products\Resources\ProductResource\Widgets\ProductStats;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Filters\QueryBuilder;
use Filament\Tables\Filters\QueryBuilder\Constraints\NumberConstraint;
use Filament\Tables\Filters\QueryBuilder\Constraints\TextConstraint;
use Illuminate\Database\Eloquent\Model;
use App\Filament\Exports\ProductExporter;
use App\Filament\Imports\ProductImporter;
use Filament\Support\Enums\ActionSize;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Enums\ActionsPosition;
use Illuminate\Support\Facades\DB;
use Filament\Support\RawJs;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Group;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\MarkdownEditor;
use Milon\Barcode\DNS1D;
use Milon\Barcode\DNS2D;
use Filament\Tables\Columns\Summarizers\Average;
use Filament\Tables\Columns\Summarizers\Sum;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;
    protected static ?string $cluster = Products::class;
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationIcon = 'heroicon-o-cube';
    protected static ?string $activeNavigationIcon = 'heroicon-s-cube';
    protected static ?string $navigationLabel = 'Product';
    protected static ?string $slug = 'product';
    protected static ?string $breadcrumb = 'Product';
    protected static ?string $pluralLabel = 'Product';
    protected static ?string $recordTitleAttribute = 'name';
    protected static ?string $recordLabelAttribute = 'name';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Group::make()
                    ->schema([
                        Section::make()
                            ->schema([
                                TextInput::make('kode')
                                    ->autocomplete()
                                    ->disabled()
                                    ->label('Kode barang'),

                                TextInput::make('name')
                                    ->label('Nama Produk')
                                    ->required()
                                    ->maxLength(255)
                                    ->live(onBlur: true)
                                    ->afterStateUpdated(function ($state, Forms\Set $set, Forms\Get $get) {
                                        DB::transaction(function () use ($state, $set, $get) {
                                            // Mengambil inisial dari kata-kata pada nama produk
                                            $nameWords = explode(' ', $state);
                                            $initials = '';
                                            foreach ($nameWords as $word) {
                                                $initials .= strtoupper(substr($word, 0, 1));
                                            }
                                            $initials = substr($initials, 0, 3); // Mengambil hanya 3 huruf awal
                            
                                            // Menghasilkan kode dengan format PRD + inisial + angka urut
                                            $prefix = 'PRD' . $initials;

                                            // Mengunci tabel untuk mencegah race condition
                                            DB::table('products')->where('kode', 'like', $prefix . '%')->lockForUpdate()->get();

                                            // Mendapatkan kode terakhir yang ada
                                            $latestProduct = Product::where('kode', 'like', $prefix . '%')->latest()->first();
                                            $lastId = ($latestProduct) ? intval(substr($latestProduct->kode, strlen($prefix))) : 0;
                                            $newId = $lastId + 1;

                                            // Set kode baru ke produk
                                            $newKode = $prefix . str_pad($newId, 3, '0', STR_PAD_LEFT);

                                            // Pastikan kode unik
                                            while (Product::where('kode', $newKode)->exists()) {
                                                $newId++;
                                                $newKode = $prefix . str_pad($newId, 3, '0', STR_PAD_LEFT);
                                            }

                                            $set('kode', $newKode);
                                        });
                                    }),

                                MarkdownEditor::make('description')
                                    ->columnSpan('full'),
                            ])
                            ->columns(2),

                        Section::make('Images')
                            ->schema([
                                FileUpload::make('image')
                                    ->directory('products/images') // Direktori penyimpanan di storage
                                    ->label('Gambar Produk')
                                    ->preserveFilenames()
                                    ->enableOpen()
                                    ->removeUploadedFileButtonPosition('right')
                                    ->image(),
                            ])
                            ->collapsible(),

                        Section::make('Pricing')
                            ->schema([
                                TextInput::make('weight')
                                    ->label('Berat')
                                    ->placeholder('Berat produk dalam gram')
                                    ->required(),
                                TextInput::make('satuan')
                                    ->label('Satuan')
                                    ->placeholder('Satuan berat gram')
                                    ->datalist([
                                        'gram',
                                        'Kg',
                                    ]),
                                TextInput::make('price')
                                    ->label('Harga')
                                    ->mask(RawJs::make('$money($input)'))
                                    ->stripCharacters(',')
                                    ->numeric(),
                            ])
                            ->columns(2),
                    ])
                    ->columnSpan(['lg' => 2]),

                Group::make()
                    ->schema([
                        Section::make('Date')
                            ->schema([
                                DatePicker::make('created_at')
                                    ->label('Create at')
                                    ->default(now())
                                    ->format('d/m/Y h:i')
                                    ->required(),
                                DatePicker::make('updated_at')
                                    ->label('Last Updated')
                                    ->default(now())
                                    ->format('d/m/Y h:i')
                                    ->required(),
                            ]),

                        Section::make('Associations')
                            ->schema([
                                Select::make('origin_id')
                                    ->label('Asal')
                                    ->searchable()
                                    ->relationship('origin', 'name')
                                    ->createOptionForm([
                                        TextInput::make('name')
                                            ->label('Asal')
                                            ->required()
                                            ->maxLength(255),
                                    ]),
                                Select::make('category_id')
                                    ->label('Kategori')
                                    ->relationship('category', 'name'),

                                Repeater::make('variants')
                                    ->relationship()
                                    ->schema([
                                        TextInput::make('name')
                                            ->label('Varian')
                                            ->datalist([
                                                'Biji Kopi',
                                                'Giling',
                                            ])
                                            ->required(),
                                    ])
                                    ->columns(1)
                                    ->createItemButtonLabel('Tambah Varian')
                            ]),
                    ])
                    ->columnSpan(['lg' => 1]),
            ])
            ->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('kode')
                    ->label('Kode Barang')
                    ->searchable()
                    ->sortable(),
                ImageColumn::make('image')
                    ->label('Gambar Produk')
                    ->square()
                    ->width(100)
                    ->height(70),
                TextColumn::make('name')
                    ->label('Nama Barang')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('stokbrng.stokTersedia')
                    ->label('Jumlah Stok')
                    ->badge()
                    ->color(function ($record) {
                        $stokTersedia = $record->stokbrng->first()->stokTersedia ?? 0;
                        $securityStok = $record->stokbrng->first()->securityStok ?? 0;

                        return $stokTersedia < $securityStok ? 'danger' : 'success';
                    })
                    ->sortable()
                    ->searchable(),
                TextColumn::make('origin.name')
                    ->label('Asal')
                    ->searchable()
                    ->toggleable()
                    ->sortable(),
                TextColumn::make('category.name')
                    ->label('Kategori')
                    ->searchable()
                    ->toggleable()
                    ->sortable(),
                TextColumn::make('variants.name')
                    ->label('Varian')
                    ->sortable()
                    ->searchable()
                    ->wrap()
                    ->formatStateUsing(function ($state, $record) {
                        return $record->variants->implode('name', ', ');
                    }),
                TextColumn::make('weight')
                    ->label('Berat')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('satuan')
                    ->label('Satuan')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('price')
                    ->label('Harga')
                    ->money('idr')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('description')
                    ->label('Deskripsi')
                    ->searchable()
                    ->limit(50)
                    ->sortable()
                    ->copyable()
                    ->copyMessage('Deskripsi telah di copy')
                    ->copyMessageDuration(1500),
                ToggleColumn::make('is_visible'),
                // \IbrahimBougaoua\FilamentRatingStar\Columns\RatingStarColumn::make('reviews.rating')
                //     ->label('AVG Rating')
                //     ->getStateUsing(function ($record) {
                //         $ratings = $record->reviews->pluck('rating');
                //         return $ratings->count() > 0 ? $ratings->average() : 'No ratings';
                //     })
                //     ->tooltip(function ($record) {
                //         // Assuming `reviews` is a relation on your model
                //         $ratings = $record->reviews->pluck('rating');

                //         // Calculate the average rating
                //         $averageRating = $ratings->count() > 0 ? $ratings->average() : 'No ratings';

                //         // Return the tooltip content
                //         return "{$averageRating} average rating(s)";
                //     }),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->dateTime('d F Y h:i')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('updated_at')
                    ->label('Diperbarui')
                    ->dateTime('d F Y h:i')
                    ->sortable()
                    ->searchable(),
            ])
            ->filters([
                QueryBuilder::make()
                    ->constraints([
                        TextConstraint::make('name'),
                        TextConstraint::make('description'),
                        NumberConstraint::make('price')
                            ->icon('heroicon-m-currency-dollar'),
                    ])
                    ->constraintPickerColumns(2),
            ])
            ->deferFilters()
            ->headerActions([
                Tables\Actions\ExportAction::make()
                    ->icon('heroicon-o-document-text')
                    ->label('Export')
                    ->button()
                    ->color('info')
                    ->outlined()
                    ->size(ActionSize::Small)
                    ->exporter(ProductExporter::class),
                Tables\Actions\ImportAction::make()
                    ->icon('heroicon-o-document-text')
                    ->label('Import')
                    ->button()
                    ->color('info')
                    ->badgeColor('info')
                    ->size(ActionSize::Small)
                    ->importer(ProductImporter::class),
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->color('success'),
                    Tables\Actions\EditAction::make()
                        ->color('info'),
                    Tables\Actions\DeleteAction::make()
                        ->color('danger'),
                ])

            ], position: ActionsPosition::BeforeColumns)
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getWidgets(): array
    {
        return [
            ProductStats::class,
        ];
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }

    public static function getGloballySearchableAttributes(): array
    {
        return ['name', 'category.name'];
    }

    public static function getGlobalSearchResultDetails(Model $record): array
    {
        /** @var Product $record */

        return [
            'Category' => optional($record->category)->name,
        ];
    }

    /** @return Builder<Product> */
    public static function getGlobalSearchEloquentQuery(): Builder
    {
        return parent::getGlobalSearchEloquentQuery()->with(['category']);
    }
}
