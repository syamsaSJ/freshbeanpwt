<?php

namespace App\Filament\Resources\Shop\OrderResource\RelationManagers;

use App\Models\OrderShipping;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Forms;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Support\Str;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Enums\ActionsPosition;

class OrderShippingsRelationManager extends RelationManager
{
    protected static string $relationship = 'orderShipping';

    protected static ?string $recordTitleAttribute = 'shipping_cost';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('courier.courier_id')
                    ->label('Kurir')
                    ->relationship('courier', 'courier_name')
                    ->required(),
                Forms\Components\TextInput::make('shipping_cost')
                    ->label('Biaya Pengiriman')
                    ->numeric()
                    ->required(),
                Forms\Components\TextInput::make('shipping_address')
                    ->label('Alamat Pengiriman')
                    ->required(),
                Forms\Components\TextInput::make('no_resi')
                    ->label('Nomer Resi'),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('courier.courier_name')
                    ->label('Kurir'),
                TextColumn::make('shipping_cost')
                    ->label('Biaya Pengiriman')
                    ->money('idr'),
                TextColumn::make('shipping_address')
                ->label('Alamat')
                ->limit(40)
                ->tooltip(
                    fn(?OrderShipping $record) => $record->shipping_address ?? '',
                ),
                TextColumn::make('no_resi')
                    ->label('Nomer Resi')
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
