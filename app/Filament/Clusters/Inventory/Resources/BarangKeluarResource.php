<?php

namespace App\Filament\Clusters\Inventory\Resources;

use App\Filament\Clusters\Inventory\Resources\BarangKeluarResource\Pages;
use App\Filament\Clusters\Inventory;
use App\Models\BrngKlr;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\ToggleButtons;
use Filament\Tables\Filters\Filter;
use Filament\Forms;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Forms\Components\DatePicker;

class BarangKeluarResource extends Resource
{
    protected static ?string $model = BrngKlr::class;
    protected static ?string $cluster = Inventory::class;
    protected static ?int $navigationSort = 3;
    protected static ?string $navigationIcon = 'heroicon-o-archive-box-x-mark';
    protected static ?string $activeNavigationIcon = 'heroicon-s-archive-box-x-mark';
    protected static ?string $navigationLabel = 'Barang Keluar';
    protected static ?string $recordTitleAttribute = 'product_id';
    protected static ?string $pluralLabel = 'Barang Keluar';
    protected static ?string $slug = 'barang-keluar';

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
                        TextInput::make('quantity')
                            ->required()
                            ->numeric(),
                        ToggleButtons::make('status')
                            ->label('Status')
                            ->inline()
                            ->options([
                                'terjual' => 'terjual',
                                'rusak' => 'rusak',
                            ])
                            ->icons([
                                'terjual' => 'heroicon-o-check-circle',
                                'rusak' => 'heroicon-o-x-circle',
                            ])
                            ->colors([
                                'terjual' => 'success',
                                'rusak' => 'danger',
                            ])
                            ->required(),
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
                TextColumn::make('quantity')
                    ->label('Jumlah')
                    ->sortable(),
                BadgeColumn::make('status')
                    ->label('Status')
                    ->sortable()
                    ->searchable()
                    ->colors([
                        'success' => 'terjual',
                        'danger' => 'rusak',
                    ])
                    ->icons([
                        'heroicon-o-check-circle' => 'terjual',
                        'heroicon-o-x-circle' => 'rusak',
                    ]),
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
                        Forms\Components\DatePicker::make('created_from'),
                        Forms\Components\DatePicker::make('created_until'),
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
            'index' => Pages\ListBarangKeluars::route('/'),
            'create' => Pages\CreateBarangKeluar::route('/create'),
            'edit' => Pages\EditBarangKeluar::route('/{record}/edit'),
        ];
    }
}

