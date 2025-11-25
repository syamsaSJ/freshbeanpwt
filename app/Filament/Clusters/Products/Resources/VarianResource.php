<?php

namespace App\Filament\Clusters\Products\Resources;

use App\Filament\Clusters\Products;
use App\Filament\Clusters\Products\Resources\VarianResource\Pages;
use App\Filament\Clusters\Products\Resources\VarianResource\RelationManagers;
use App\Models\Varian;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Card;
use App\Filament\Exports\VarianExporter;
use App\Filament\Imports\VarianImporter;
use Filament\Support\Enums\ActionSize;
use Filament\Tables\Enums\ActionsPosition;

class VarianResource extends Resource
{
    protected static ?string $model = Varian::class;
    protected static ?string $navigationIcon = 'heroicon-o-circle-stack';
    protected static ?string $activeNavigationIcon = 'heroicon-s-circle-stack';
    protected static ?string $cluster = Products::class;
    protected static ?int $navigationSort = 3;
    protected static ?string $navigationLabel = 'Varian';
    protected static ?string $recordTitleAttribute = 'name';
    protected static ?string $slug = 'varian';
    protected static ?string $breadcrumb = 'Varian';
    protected static ?string $pluralLabel = 'Varian';

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
                        Forms\Components\TextInput::make('name')
                            ->label('Varian')
                            ->datalist([
                                'Biji Kopi',
                                'Giling',
                            ])
                            ->required(),
                    ])
                    ->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('ID')
                    ->sortable(),
                Tables\Columns\TextColumn::make('product.name')
                    ->label('Nama Barang')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('name')
                    ->label('Varian')
                    ->sortable()
                    ->searchable(),
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
                //
            ])
            ->headerActions([
                Tables\Actions\ExportAction::make()
                    ->icon('heroicon-o-document-text')
                    ->label('Export')
                    ->button()
                    ->outlined()
                    ->color('info')
                    ->size(ActionSize::Small)
                    ->exporter(VarianExporter::class),
                Tables\Actions\ImportAction::make()
                    ->icon('heroicon-o-document-text')
                    ->label('Import')
                    ->button()
                    ->color('info')
                    ->badgeColor('info')
                    ->size(ActionSize::Small)
                    ->importer(VarianImporter::class),
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

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListVarians::route('/'),
            'create' => Pages\CreateVarian::route('/create'),
            'edit' => Pages\EditVarian::route('/{record}/edit'),
        ];
    }
}
