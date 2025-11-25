<?php

namespace App\Filament\Resources\Shop\OrderResource\RelationManagers;

use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Forms\Components\FileUpload;
use App\Enums\OrderStatusPayment;
use Filament\Tables\Enums\ActionsPosition;

class OrderPaymentsRelationManager extends RelationManager
{
    protected static string $relationship = 'orderPayment';

    protected static ?string $recordTitleAttribute = 'payment_method_id';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('paymentMethod.type_payment')
                    ->label('Payment Method')
                    ->relationship('paymentMethod', 'type_payment')
                    ->required(),
                Select::make('payment_status')
                    ->options([
                        OrderStatusPayment::BelumDiterima->value => OrderStatusPayment::BelumDiterima->getLabel(),
                        OrderStatusPayment::Diterima->value => OrderStatusPayment::Diterima->getLabel(),
                        OrderStatusPayment::Refund->value => OrderStatusPayment::Refund->getLabel(),
                    ])
                    ->required(),
                FileUpload::make('buktiPembayaran')
                    ->directory('buktiPembayaran/images') // Direktori penyimpanan di storage
                    ->preserveFilenames()
                    ->image(),
                TextInput::make('amount')
                    ->label('Jumlah Pembayaran')
                    ->numeric()
                    ->required(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('paymentMethod.type_payment')
                    ->label('Payment Method'),
                BadgeColumn::make('payment_status')
                    ->label('Payment Status')
                    ->colors([
                        'secondary' => 'BelumDiterima',
                        'success' => 'Diterima',
                        'danger' => 'Refund',
                    ])
                    ->icons([
                        'heroicon-o-sparkles' => 'BelumDiterima',
                        'heroicon-o-badge-check' => 'Diterima',
                        'heroicon-o-x-circle' => 'Refund',
                    ]),
                ImageColumn::make('buktiPembayaran'),
                TextColumn::make('amount')
                    ->label('Jumlah Pembayaran')
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
