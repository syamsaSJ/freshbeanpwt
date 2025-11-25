<?php

namespace App\Filament\Resources\Shop\OrderResource\RelationManagers;

use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Card;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Enums\ActionsPosition;

class OrderItemsRelationManager extends RelationManager
{
    protected static string $relationship = 'orderItems';
    protected static string $recordInstanceName = 'order item';
    protected static ?string $recordTitleAttribute = 'product_id';
    protected static ?string $pluralLabel = 'Order Item';
    protected static ?string $singularLabel = 'Order Item';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Select::make('order_id')
                            ->label('No Order')
                            ->disabled()
                            ->relationship('order', 'no_order')
                            ->required(),
                        Select::make('product_id')
                            ->label('Nama Produk')
                            ->relationship('product', 'name')
                            ->required(),
                        TextInput::make('varian')
                            ->label('Varian')
                            ->required(),
                        TextInput::make('quantity')
                            ->label('Jumlah')
                            ->numeric()
                            ->required(),
                        TextInput::make('price')
                            ->label('Harga Satuan')
                            ->numeric()
                            ->required(),
                        TextInput::make('total')
                            ->label('Total')
                            ->numeric(),
                    ])
                    ->columns(2)
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('order.no_order')
                    ->label('No Order')
                    ->sortable(),
                TextColumn::make('product.name')
                    ->label('Nama Produk')
                    ->sortable(),
                TextColumn::make('varian')
                    ->label('Varian')
                    ->sortable(),
                TextColumn::make('quantity')
                    ->label('Jumlah')
                    ->sortable(),
                TextColumn::make('price')
                    ->label('Harga Satuan')
                    ->money('idr')
                    ->sortable(),
                TextColumn::make('total')
                    ->label('Total')
                    ->money('idr'),
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

            ], position: ActionsPosition::BeforeColumns);
    }
}

