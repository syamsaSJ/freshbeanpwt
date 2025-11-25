<?php

namespace App\Filament\Clusters\Tokos\Resources;

use App\Filament\Clusters\Tokos;
use App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource\Pages;
use App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource\RelationManagers;
use App\Models\paymentMethod;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Card;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\DatePicker;

class MetodePembayaranResource extends Resource
{
    protected static ?string $model = paymentMethod::class;
    protected static ?string $cluster = Tokos::class;
    protected static ?string $navigationIcon = 'heroicon-o-wallet';
    protected static ?string $activeNavigationIcon = 'heroicon-s-wallet';
    protected static ?int $navigationSort = 2;
    protected static ?string $navigationLabel = 'Metode Pembayaran';
    protected static ?string $pluralLabel = 'Metode Pembayaran';
    protected static ?string $recordTitleAttribute = 'type_payment';
    protected static ?string $slug = 'metode-pembayaran';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Forms\Components\TextInput::make('type_payment')
                            ->label('Payment Type')
                            ->required(),
                    ])
                    ->columns(1)
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
                Tables\Columns\TextColumn::make('type_payment')
                    ->label('Payment Type'),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->sortable(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->label('Diperbarui')
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
            'index' => Pages\ListMetodePembayarans::route('/'),
            'create' => Pages\CreateMetodePembayaran::route('/create'),
            'edit' => Pages\EditMetodePembayaran::route('/{record}/edit'),
        ];
    }
}
