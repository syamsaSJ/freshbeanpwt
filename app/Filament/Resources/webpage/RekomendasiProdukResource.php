<?php

namespace App\Filament\Resources\webpage;

use App\Filament\Resources\webpage\RekomendasiProdukResource\Pages;
use App\Filament\Resources\webpage\RekomendasiProdukResource\RelationManagers;
use App\Models\rekomendasiProduk;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Card;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Enums\ActionsPosition;

class RekomendasiProdukResource extends Resource
{
    protected static ?string $model = rekomendasiProduk::class;
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationIcon = 'heroicon-o-cube';
    protected static ?string $activeNavigationIcon = 'heroicon-s-cube';
    protected static ?string $navigationGroup = 'Web page';
    protected static ?string $navigationLabel = 'Rekomendasi Produk';
    protected static ?string $pluralLabel = 'Rekomendasi Produk';
    protected static ?string $slug = 'rekomendasi-produk';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Forms\Components\Select::make('product_id')
                            ->label('Nama Barang')
                            ->relationship('product', 'name')
                            ->required(),
                    ])
                    ->columns(1)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ToggleColumn::make('is_visible'),
                ImageColumn::make('product.image')
                    ->label('Gambar Produk')
                    ->square()
                    ->width(100)
                    ->height(70),
                Tables\Columns\TextColumn::make('product.name')
                    ->label('Nama Barang')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('product.price')
                    ->label('Harga Barang')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Tanggal Pembuatan')
                    ->sortable(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->label('Tanggal Update')
                    ->sortable(),
            ])
            ->filters([
                //
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

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRekomendasiProduks::route('/'),
            'create' => Pages\CreateRekomendasiProduk::route('/create'),
            'edit' => Pages\EditRekomendasiProduk::route('/{record}/edit'),
        ];
    }
}
