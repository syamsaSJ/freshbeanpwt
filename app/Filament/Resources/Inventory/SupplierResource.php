<?php

namespace App\Filament\Resources\Inventory;

use App\Filament\Resources\Inventory\SupplierResource\Pages;
use App\Models\Supplier;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Placeholder;
use Filament\Tables\Filters\Filter;
use Filament\Forms;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Forms\Components\DatePicker;

class SupplierResource extends Resource
{
    protected static ?string $model = Supplier::class;
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationIcon = 'heroicon-o-truck';
    protected static ?string $activeNavigationIcon = 'heroicon-s-truck';
    protected static ?string $navigationGroup = 'Management Pemasok';
    protected static ?string $navigationLabel = 'Supplier';
    protected static ?string $recordTitleAttribute = 'name';
    protected static ?string $pluralLabel = 'Supplier';
    protected static ?string $slug = 'inventory/supplier';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        TextInput::make('name')
                            ->label('Supplier')
                            ->required(),
                        TextInput::make('contact')
                            ->label('Contact')
                            ->required(),
                        TextInput::make('address')
                            ->label('Address')
                            ->columnSpanFull()
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
                TextColumn::make('name')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('contact')
                    ->sortable(),
                TextColumn::make('address')
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

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSuppliers::route('/'),
            'create' => Pages\CreateSupplier::route('/create'),
            'edit' => Pages\EditSupplier::route('/{record}/edit'),
        ];
    }
}
