<?php

namespace App\Filament\Clusters\Tokos\Resources;

use App\Filament\Clusters\Tokos;
use App\Filament\Clusters\Tokos\Resources\ShippingResource\Pages;
use App\Filament\Clusters\Tokos\Resources\ShippingResource\RelationManagers;
use App\Models\Courier;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Notifications\Notification;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderInvoiceMail;
use Filament\Forms\Components\Card;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\DatePicker;

class ShippingResource extends Resource
{
    protected static ?string $model = Courier::class;
    protected static ?string $cluster = Tokos::class;
    protected static ?string $navigationIcon = 'heroicon-o-truck';
    protected static ?string $activeNavigationIcon = 'heroicon-s-truck';
    protected static ?string $navigationLabel = 'Pengiriman';
    protected static ?string $pluralLabel = 'Pengiriman';
    protected static ?int $navigationSort = 3;
    protected static ?string $recordTitleAttribute = 'courier_name';
    protected static ?string $slug = 'shipping';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Forms\Components\TextInput::make('courier_name')
                            ->label('Nama kurir')
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
                Tables\Columns\TextColumn::make('courier_name'),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->sortable(),
                TextColumn::make('updated_at')
                    ->label('Diperbarui')
                    ->sortable(),
                //
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
            'index' => Pages\ListShippings::route('/'),
            'create' => Pages\CreateShipping::route('/create'),
            'edit' => Pages\EditShipping::route('/{record}/edit'),
        ];
    }
}
