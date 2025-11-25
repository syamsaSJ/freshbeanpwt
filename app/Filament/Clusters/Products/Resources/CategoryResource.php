<?php

namespace App\Filament\Clusters\Products\Resources;

use App\Filament\Clusters\Products;
use App\Filament\Clusters\Products\Resources\CategoryResource\Pages;
use App\Filament\Clusters\Products\Resources\CategoryResource\RelationManagers;
use App\Filament\Imports\CategoryImporter;
use App\Models\Category;
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
use App\Filament\Exports\CategoryExporter;
use Filament\Support\Enums\ActionSize;
use Filament\Tables\Enums\ActionsPosition;

class CategoryResource extends Resource
{
    protected static ?string $model = Category::class;
    protected static ?string $navigationIcon = 'heroicon-o-tag';
    protected static ?string $activeNavigationIcon = 'heroicon-s-tag';
    protected static ?string $cluster = Products::class;
    protected static ?int $navigationSort = 2;
    protected static ?string $navigationLabel = 'Category';
    protected static ?string $recordTitleAttribute = 'name';
    protected static ?string $slug = 'category';
    protected static ?string $breadcrumb = 'Category';
    protected static ?string $pluralLabel = 'Category';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        TextInput::make('name')
                            ->label('Nama Kategory')
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
                TextColumn::make('id')
                    ->label('ID')
                    ->sortable(),
                TextColumn::make('name')
                    ->label('Kategori')
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
                    ->exporter(CategoryExporter::class),
                Tables\Actions\ImportAction::make()
                    ->icon('heroicon-o-document-text')
                    ->label('Import')
                    ->button()
                    ->color('info')
                    ->badgeColor('info')
                    ->size(ActionSize::Small)
                    ->importer(CategoryImporter::class),
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
            'index' => Pages\ListCategories::route('/'),
            'create' => Pages\CreateCategory::route('/create'),
            'edit' => Pages\EditCategory::route('/{record}/edit'),
        ];
    }
}
