<?php

namespace App\Filament\Clusters\Products\Resources;

use App\Filament\Clusters\Products;
use App\Filament\Clusters\Products\Resources\OriginResource\Pages;
use App\Filament\Clusters\Products\Resources\OriginResource\RelationManagers;
use App\Models\Origin;
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
use App\Filament\Exports\OriginExporter;
use App\Filament\Imports\OriginImporter;
use Filament\Support\Enums\ActionSize;
use Filament\Tables\Enums\ActionsPosition;

class OriginResource extends Resource
{
    protected static ?string $model = Origin::class;
    protected static ?string $navigationIcon = 'heroicon-o-location-marker';
    protected static ?string $activeNavigationIcon = 'heroicon-s-location-marker';
    protected static ?string $cluster = Products::class;
    protected static ?int $navigationSort = 4;
    protected static ?string $navigationLabel = 'Origin';
    protected static ?string $recordTitleAttribute = 'name';
    protected static ?string $slug = 'origin';
    protected static ?string $breadcrumb = 'Origin';
    protected static ?string $pluralLabel = 'Origin';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Forms\Components\TextInput::make('name')
                            ->label('Asal')
                            ->required()
                            ->maxLength(255),
                    ])
                    ->columns(1)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('ID')
                    ->sortable(),
                Tables\Columns\TextColumn::make('name')
                    ->label('Asal')
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

            ])
            ->headerActions([
                Tables\Actions\ExportAction::make()
                    ->icon('heroicon-o-document-text')
                    ->label('Export')
                    ->button()
                    ->outlined()
                    ->color('info')
                    ->size(ActionSize::Small)
                    ->exporter(OriginExporter::class),
                Tables\Actions\ImportAction::make()
                    ->icon('heroicon-o-document-text')
                    ->label('Import')
                    ->button()
                    ->color('info')
                    ->badgeColor('info')
                    ->size(ActionSize::Small)
                    ->importer(OriginImporter::class),
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
            'index' => Pages\ListOrigins::route('/'),
            'create' => Pages\CreateOrigin::route('/create'),
            'edit' => Pages\EditOrigin::route('/{record}/edit'),
        ];
    }
}
