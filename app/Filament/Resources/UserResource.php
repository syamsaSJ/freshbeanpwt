<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Textarea;
use App\Services\RajaOngkirService;
use Filament\Forms\Components\DatePicker;

class UserResource extends Resource
{
    protected static ?string $model = User::class;
    protected static ?string $navigationIcon = 'heroicon-o-user';
    protected static ?string $activeNavigationIcon = 'heroicon-s-user';
    protected static ?string $navigationLabel = 'User';
    protected static ?string $pluralLabel = 'User';
    protected static ?string $navigationGroup = 'Management User';
    protected static ?int $navigationSort = 1;
    protected static ?string $slug = 'user';

    public static function form(Form $form): Form
    {
        $service = new RajaOngkirService();
        $provinces = $service->getProvinces();
        $provinceOptions = [];
        foreach ($provinces['rajaongkir']['results'] as $province) {
            $provinceOptions[$province['province_id']] = $province['province'];
        }
        return $form
            ->schema([
                Forms\Components\Group::make()
                    ->schema([
                        Forms\Components\Section::make()
                            ->schema([
                                TextInput::make('name')
                                    ->label('Nama')
                                    ->columnSpanFull()
                                    ->required(),
                                TextInput::make('email')
                                    ->label('Email')
                                    ->email()
                                    ->required(),
                                TextInput::make('phone')
                                    ->label('NO HP')
                                    ->required(),
                                TextInput::make('password')
                                    ->label('Password')
                                    ->columnSpanFull()
                                    ->revealable()
                                    ->hiddenOn('edit') // Sembunyikan pada halaman edit
                                    ->hiddenOn('list') // Sembunyikan pada halaman daftar
                                    ->visibleOn('create') // Tampilkan hanya pada halaman create
                                    ->password(),
                                Select::make('roles')
                                    ->label('Role')
                                    ->relationship('roles', 'name')
                                    ->multiple()
                                    ->preload(),
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
                                Textarea::make('alamat')
                                    ->required()
                                    ->label('Alamat')
                                    ->columnSpanFull(),
                            ])
                            ->columns(2),

                        Forms\Components\Section::make('Images')
                            ->schema([
                                FileUpload::make('avatar')
                                    ->directory('avatars/images') // Direktori penyimpanan di storage
                                    ->label('Avatar')
                                    ->preserveFilenames()
                                    ->enableOpen()
                                    ->removeUploadedFileButtonPosition('right')
                                    ->image(),
                            ])
                            ->collapsible(),
                    ])
                    ->columnSpan(['lg' => 2]),

                Forms\Components\Group::make()
                    ->schema([
                        Forms\Components\Section::make('Date')
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
                            ]),
                    ])
                    ->columnSpan(['lg' => 1]),
            ])
            ->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('avatar')
                    ->label('Avatar')
                    ->circular(),
                TextColumn::make('name')
                    ->label('Name')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('roles.name')
                    ->label('Role')
                    ->searchable()
                    ->badge(),
                TextColumn::make('email')
                    ->label('Email'),
                TextColumn::make('phone')
                    ->label('NO HP'),
                TextColumn::make('provinsi.name')
                    ->label('Province'),
                TextColumn::make('kota.name')
                    ->label('City'),
                TextColumn::make('alamat')
                    ->label('Alamat')
                    ->limit(50),
                TextColumn::make('kode_pos')
                    ->label('Kode Pos'),
                TextColumn::make('email_verified_at')
                    ->label('Email Verified At'),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->dateTime('d F Y h:i'),
                TextColumn::make('updated_at')
                    ->label('Diperbarui')
                    ->dateTime('d F Y h:i'),
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
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }
}
