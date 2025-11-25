<?php

namespace App\Filament\Clusters\Tokos\Resources;

use App\Filament\Clusters\Tokos;
use App\Filament\Clusters\Tokos\Resources\TokoResource\Pages;
use App\Filament\Clusters\Tokos\Resources\TokoResource\RelationManagers;
use App\Models\Toko;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Services\RajaOngkirService;
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
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\MarkdownEditor;

class TokoResource extends Resource
{
    protected static ?string $model = Toko::class;
    protected static ?string $cluster = Tokos::class;
    protected static ?string $navigationIcon = 'heroicon-o-building-storefront';
    protected static ?string $activeNavigationIcon = 'heroicon-s-building-storefront';
    protected static ?string $navigationLabel = 'Toko';
    protected static ?int $navigationSort = 1;
    protected static ?string $pluralLabel = 'Toko';
    protected static ?string $recordTitleAttribute = 'nama_toko';
    protected static ?string $slug = 'toko';
    protected static ?string $recordLabelAttribute = 'name';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        TextInput::make('nama_toko')
                            ->required()
                            ->columnSpanFull()
                            ->label('Nama Toko'),
                        TextInput::make('contact')
                            ->required()
                            ->label('Contact'),
                        TextInput::make('email')
                            ->required()
                            ->email()
                            ->label('Email'),
                        Select::make('province_id')
                            ->label('Province')
                            ->relationship('provinsi', 'name')
                            ->reactive()
                            ->preload(),
                        Select::make('city_id')
                            ->label('City')
                            ->relationship('kota', 'name', function ($query, $get) {
                                // Filter kota berdasarkan province_id
                                if ($provinceId = $get('province_id')) {
                                    $query->where('province_id', $provinceId);
                                }
                            })
                            ->required(),
                        TextInput::make('kode_pos')
                            ->required()
                            ->label('Kode Pos'),
                        MarkdownEditor::make('terms')
                            ->label('Terms and Condition')
                            ->columnSpan('full'),
                        MarkdownEditor::make('privacy')
                            ->label('Privacy Policy')
                            ->columnSpan('full'),
                        TextInput::make('alamat')
                            ->required()
                            ->columnSpanFull()
                            ->label('Alamat'),
                    ])
                    ->columns(2)
                    ->columnSpan(['lg' => fn(?Toko $record) => $record === null ? 3 : 2]),

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
                    ->columnSpan(['lg' => 1])
            ])
            ->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nama_toko')
                    ->label('Nama Toko'),
                TextColumn::make('contact')
                    ->label('Contact'),
                TextColumn::make('email')
                    ->label('Email'),
                TextColumn::make('provinsi.name')
                    ->label('Province'),
                TextColumn::make('kota.name')
                    ->label('City'),
                TextColumn::make('alamat')
                    ->label('Alamat'),
                TextColumn::make('kode_pos')
                    ->label('Kode Pos'),
                TextColumn::make('terms')
                    ->label('Terms & Condition')
                    ->searchable()
                    ->limit(50)
                    ->sortable()
                    ->copyable()
                    ->copyMessage('Deskripsi telah di copy')
                    ->copyMessageDuration(1500),
                TextColumn::make('privacy')
                    ->label('Privacy Policy')
                    ->searchable()
                    ->limit(50)
                    ->sortable()
                    ->copyable()
                    ->copyMessage('Deskripsi telah di copy')
                    ->copyMessageDuration(1500),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->sortable(),
                TextColumn::make('updated_at')
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
            'index' => Pages\ListTokos::route('/'),
            'create' => Pages\CreateToko::route('/create'),
            'edit' => Pages\EditToko::route('/{record}/edit'),
        ];
    }
}
