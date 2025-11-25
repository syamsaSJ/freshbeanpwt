<?php

namespace App\Filament\Clusters\Inventory\Resources;

use App\Filament\Clusters\Inventory\Resources\StokBarangResource\Pages;
use App\Filament\Clusters\Inventory;
use App\Models\StokBrng;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Section;
use Filament\Tables\Enums\ActionsPosition;
use App\Filament\Clusters\Inventory\Resources\StokBarangResource\Widgets\StokStats;

class StokBarangResource extends Resource
{
    protected static ?string $model = StokBrng::class;
    protected static ?string $cluster = Inventory::class;
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationIcon = 'heroicon-o-inbox-stack';
    protected static ?string $activeNavigationIcon = 'heroicon-s-inbox-stack';
    protected static ?string $navigationLabel = 'Stok Barang';
    protected static ?string $recordTitleAttribute = 'product_id';
    protected static ?string $pluralLabel = 'Stok Barang';
    protected static ?string $slug = 'stok-barang';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Select::make('product_id')
                            ->relationship('product', 'name')
                            ->required(),
                        Select::make('supplier_id')
                            ->relationship('supplier', 'name')
                            ->required(),
                        TextInput::make('stokAwal')
                            ->label('Stok Awal')
                            ->required()
                            ->disabled()
                            ->columnSpanFull()
                            ->numeric(),
                        TextInput::make('stokMasuk')
                            ->label('Stok Masuk'),
                        TextInput::make('stokKeluar')
                            ->label('Stok Keluar'),
                        TextInput::make('stokTersedia')
                            ->label('Stok Tersedia')
                            ->disabled(),
                        TextInput::make('securityStok')
                            ->label('Security Stok')
                            ->required()
                            ->numeric(),
                    ])
                    ->columns(2)
                    ->columnSpan(['lg' => 1]),

                Section::make('Timestamps')
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
                    ])
                    ->columnSpan(['md' => 1]),
            ])
            ->columns(2);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('product.kode')
                    ->label('Kode Barang'),
                TextColumn::make('product.name')
                    ->label('Nama Barang')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('supplier.name')
                    ->label('Nama Supplier')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('stokAwal')
                    ->label('Stok Awal')
                    ->sortable(),
                TextColumn::make('stokMasuk')
                    ->label('Stok Masuk')
                    ->sortable(),
                TextColumn::make('stokKeluar')
                    ->label('Stok Keluar')
                    ->sortable(),
                TextColumn::make('stokTersedia')
                    ->label('Stok Tersedia')
                    ->sortable(),
                TextColumn::make('securityStok')
                    ->label('Security Stok')
                    ->sortable(),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->sortable(),
                TextColumn::make('updated_at')
                    ->label('Diperbarui')
                    ->sortable(),
            ])
            ->filters([
                Filter::make('created_at')
                    ->form([
                        DatePicker::make('created_from'),
                        DatePicker::make('created_until'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['created_from'],
                                fn(Builder $query, $date): Builder => $query->whereDate('created_at', '>=', $date),
                            )
                            ->when(
                                $data['created_until'],
                                fn(Builder $query, $date): Builder => $query->whereDate('created_at', '<=', $date),
                            );
                    })
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
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListStokBarangs::route('/'),
            'create' => Pages\CreateStokBarang::route('/create'),
            'edit' => Pages\EditStokBarang::route('/{record}/edit'),
        ];
    }

    protected function getTableFiltersFormColumns(): int
    {
        return 3;
    }

    public static function getWidgets(): array
    {
        return [
            StokStats::class,
        ];
    }
}

