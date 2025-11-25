<?php

namespace App\Filament\Clusters\Products\Resources;

use App\Filament\Clusters\Products;
use App\Filament\Clusters\Products\Resources\ReviewResource\Pages;
use App\Filament\Clusters\Products\Resources\ReviewResource\RelationManagers;
use App\Models\Review;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use IbrahimBougaoua\FilamentRatingStar\Columns\Components\RatingStar;
use Filament\Tables\Enums\ActionsPosition;

class ReviewResource extends Resource
{
    protected static ?string $model = Review::class;
    protected static ?string $navigationIcon = 'heroicon-o-star';
    protected static ?string $cluster = Products::class;
    protected static ?string $activeNavigationIcon = 'heroicon-s-star';
    protected static ?int $navigationSort = 5;
    protected static ?string $navigationLabel = 'Review';
    protected static ?string $recordTitleAttribute = 'rating';
    protected static ?string $slug = 'review';
    protected static ?string $breadcrumb = 'Review';
    protected static ?string $pluralLabel = 'Review';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('user.name')
                    ->label('Nama'),
                Tables\Columns\TextColumn::make('product.name')
                    ->label('Nama Produk'),
                RatingStar::make('rating')
                    ->label('Rating'),
                Tables\Columns\TextColumn::make('review')
                    ->label('Ulasan'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->color('success'),
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
            'index' => Pages\ListReviews::route('/'),
            'create' => Pages\CreateReview::route('/create'),
            'edit' => Pages\EditReview::route('/{record}/edit'),
        ];
    }
}
