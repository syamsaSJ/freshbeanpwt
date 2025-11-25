<?php

namespace App\Filament\Resources\Shop;

use App\Filament\Resources\Shop\OrderResource\Pages;
use App\Filament\Resources\Shop\OrderResource\RelationManagers\OrderItemsRelationManager;
use App\Filament\Resources\Shop\OrderResource\RelationManagers\OrderPaymentsRelationManager;
use App\Filament\Resources\Shop\OrderResource\RelationManagers\OrderShippingsRelationManager;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\User;
use App\Models\Product;
use App\Models\varian;
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
use Filament\Tables\Filters\SelectFilter;
use App\Enums\OrderStatus;
use App\Filament\Clusters\Products\Resources\ProductResource;
use Filament\Forms\Components\Actions\Action;
use Filament\Forms\Components\Repeater;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\ToggleButtons;
use Illuminate\Support\Carbon;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Forms\Components\DatePicker;

class OrderResource extends Resource
{
    protected static ?string $model = Order::class;
    protected static ?string $navigationIcon = 'heroicon-o-shopping-bag';
    protected static ?string $activeNavigationIcon = 'heroicon-s-shopping-bag';
    protected static ?string $navigationGroup = 'Shop';
    protected static ?int $navigationSort = 2;
    protected static ?string $navigationLabel = 'Order';
    protected static ?string $pluralLabel = 'Order';
    protected static ?string $recordTitleAttribute = 'no_order';
    protected static ?string $slug = 'shop/order';

    // public static function form(Form $form): Form
    // {
    //     return $form
    //         ->schema([
    //             Card::make()
    //                 ->schema([
    //                     Forms\Components\TextInput::make('no_order')
    //                         ->label('No Order')
    //                         ->autocomplete()
    //                         ->disabled()
    //                         ->required()
    //                         ->columnSpanFull(),
    //                     Select::make('user_id')
    //                         ->label('Nama Costumer')
    //                         ->relationship('user', 'name'),
    //                     Select::make('status')
    //                         ->label('Status')
    //                         ->options([
    //                             'pending' => 'pending',
    //                             'Diproses' => 'Diproses',
    //                             'Dikirim' => 'Dikirim',
    //                             'completed' => 'completed',
    //                             'canceled' => 'canceled',
    //                         ])
    //                         ->required(),
    //                     Forms\Components\TextInput::make('alamat')
    //                         ->label('Alamat')
    //                         ->required(),
    //                     Select::make('paymentMethod.type_payment')
    //                         ->label('Metode Pembayaran')
    //                         ->relationship('paymentMethod', 'type_payment')
    //                         ->required(),
    //                     Forms\Components\TextInput::make('shipping_cost')
    //                         ->label('Biaya Pengiriman')
    //                         ->numeric()
    //                         ->required(),
    //                     Forms\Components\TextInput::make('total_price')
    //                         ->label('Total Price')
    //                         ->numeric()
    //                         ->required(),
    //                     Forms\Components\TextInput::make('grand_total')
    //                         ->label('Grand Total')
    //                         ->numeric()
    //                         ->required(),
    //                     Forms\Components\DatePicker::make('created_at')
    //                         ->label('Tanggal Order'),
    //                 ])
    //                 ->columns(2)
    //         ]);
    // }

    // public static function table(Table $table): Table
    // {
    //     return $table
    //         ->columns([
    //             Tables\Columns\TextColumn::make('no_order')
    //                 ->label('No Order')
    //                 ->sortable()
    //                 ->searchable(),
    //             Tables\Columns\TextColumn::make('user.name')
    //                 ->sortable()
    //                 ->searchable()
    //                 ->label('Nama Costumer'),
    //             BadgeColumn::make('status')
    //                 ->label('Status Order')
    //                 ->sortable()
    //                 ->searchable()
    //                 ->colors([
    //                     'secondary' => 'pending',
    //                     'primary' => 'Diproses',
    //                     'warning' => 'Dikirim',
    //                     'success' => 'completed',
    //                     'danger' => 'canceled',
    //                 ])
    //                 ->icons([
    //                     'heroicon-o-sparkles' => 'pending',
    //                     'heroicon-o-badge-check' => 'Diproses',
    //                     'heroicon-o-truck' => 'Dikirim',
    //                     'heroicon-o-check-circle' => 'completed',
    //                     'heroicon-o-x-circle' => 'canceled',
    //                 ]),
    //             Tables\Columns\TextColumn::make('alamat')
    //                 ->label('Alamat')
    //                 ->sortable()
    //                 ->searchable(),
    //             TextColumn::make('paymentMethod.type_payment')
    //                 ->label('Metode Pembayaran')
    //                 ->sortable()
    //                 ->searchable(),
    //             Tables\Columns\TextColumn::make('shipping_cost')
    //                 ->money('idr')
    //                 ->label('Biaya Pengiriman')
    //                 ->sortable()
    //                 ->searchable(),
    //             Tables\Columns\TextColumn::make('total_price')
    //                 ->money('idr')
    //                 ->label('Total Biaya')
    //                 ->sortable()
    //                 ->searchable(),
    //             Tables\Columns\TextColumn::make('grand_total')
    //                 ->money('idr')
    //                 ->label('Grand Total')
    //                 ->sortable()
    //                 ->searchable(),
    //             Tables\Columns\TextColumn::make('created_at')
    //                 ->label('Tanggal Order')
    //                 ->sortable()
    //                 ->searchable(),
    //             Tables\Columns\TextColumn::make('updated_at')
    //                 ->label('Tanggal Update')
    //                 ->sortable(),
    //         ])
    //         ->filters([
    //             Tables\Filters\Filter::make('completed')
    //                 ->label('Completed Orders')
    //                 ->query(fn(Builder $query) => $query->where('status', 'completed')),
    //             Tables\Filters\Filter::make('pending')
    //                 ->label('Pending Orders')
    //                 ->query(fn(Builder $query) => $query->where('status', 'pending')),
    //         ])
    //         ->actions([
    //             Tables\Actions\ActionGroup::make([
    //                 Tables\Actions\ViewAction::make(),
    //                 Tables\Actions\EditAction::make(),
    //                 Tables\Actions\DeleteAction::make(),
    //                 Tables\Actions\Action::make('send_invoice')
    //                     ->label('Send Invoice')
    //                     ->icon('heroicon-o-mail')
    //                     ->action(fn(Order $order) => (new self)->sendInvoice($order))
    //                     ->requiresConfirmation()
    //                     ->color('info'),
    //             ]),
    //         ])
    //         ->bulkActions([
    //             Tables\Actions\DeleteBulkAction::make(),
    //         ]);
    // }

    // public static function getRelations(): array
    // {
    //     return [
    //         OrderItemsRelationManager::class,
    //         OrderPaymentsRelationManager::class,
    //         OrderShippingsRelationManager::class,
    //     ];
    // }

    // public static function getPages(): array
    // {
    //     return [
    //         'index' => Pages\ListOrders::route('/'),
    //         'create' => Pages\CreateOrder::route('/create'),
    //         'edit' => Pages\EditOrder::route('/{record}/edit'),
    //     ];
    // }

    // public static function getNavigationBadge(): ?string
    // {
    //     /** @var class-string<Order> $modelClass */
    //     $modelClass = static::$model;

    //     return (string) $modelClass::where('status', 'pending')->count();
    // }

    // public static function getWidgets(): array
    // {
    //     return [
    //         OrderResource\Widgets\OrderOverview::class,

    //     ];
    // }

    // protected function getHeaderWidgetsColumns(): int|array
    // {
    //     return 3;
    // }

    // public function sendInvoice(Order $order)
    // {
    //     // Retrieve the user and their email based on the order ID
    //     $user = User::join('orders', 'users.id', '=', 'orders.user_id')
    //         ->where('orders.id', $order->id)
    //         ->select('users.email')
    //         ->first();

    //     if (!$user) {
    //         // Handle the case where the user is not found
    //         \Log::error('User not found for order ID: ' . $order->id);
    //         return; // or throw an exception or handle it as needed
    //     }

    //     // Extract the email address from the result
    //     $email = $user->email;

    //     // Generate PDF
    //     $pdf = Pdf::loadView('emails/invoice', compact('order'));

    //     // Save PDF to a temporary file
    //     $filePath = storage_path('app/invoice1' . $order->id . '.pdf');
    //     $pdf->save($filePath);

    //     // Send the invoice to the user's email
    //     Mail::to($email)->send(new OrderInvoiceMail($order, $filePath));
    // }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Group::make()
                    ->schema([
                        Forms\Components\Section::make()
                            ->schema(static::getDetailsFormSchema())
                            ->columns(2),

                        Forms\Components\Section::make('Order items')
                            ->headerActions([
                                Action::make('reset')
                                    ->modalHeading('Are you sure?')
                                    ->modalDescription('All existing items will be removed from the order.')
                                    ->requiresConfirmation()
                                    ->color('danger')
                                    ->action(fn(Forms\Set $set) => $set('items', [])),
                            ])
                            ->schema([
                                static::getItemsRepeater(),
                            ]),
                    ])
                    ->columnSpan(['lg' => fn(?Order $record) => $record === null ? 3 : 2]),

                Forms\Components\Section::make()
                    ->schema([
                        DatePicker::make('created_at')
                            ->label('Create at')
                            ->default(now())
                            ->format('d/m/Y h:i')
                            ->timezone('Asia/Jakarta')
                            ->required(),
                        DatePicker::make('updated_at')
                            ->label('Last Updated')
                            ->default(now())
                            ->format('d/m/Y h:i')
                            ->timezone('Asia/Jakarta')
                            ->required(),
                    ])
                    ->columnSpan(['lg' => 1])
                    ->hidden(fn(?Order $record) => $record === null),
            ])
            ->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('no_order')
                    ->label('No Order')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('user.name')
                    ->label('Customer')
                    ->searchable()
                    ->sortable()
                    ->limit(10)
                    ->tooltip(
                        fn(?Order $record) => $record->user->name ?? '',
                    )
                    ->toggleable(),
                TextColumn::make('status')
                    ->label('Status')
                    ->badge()
                    ->color(
                        fn(Order $record): string => match ($record->status) {
                            'pending' => 'info',
                            'Diproses' => 'warning',
                            'Dikirim', 'completed' => 'success',
                            'canceled' => 'danger',
                        },
                    )
                    ->icon(
                        fn(Order $record): string => match ($record->status) {
                            'pending' => 'heroicon-m-sparkles',
                            'Diproses' => 'heroicon-m-arrow-path',
                            'Dikirim' => 'heroicon-m-truck',
                            'completed' => 'heroicon-m-check-badge',
                            'canceled' => 'heroicon-m-x-circle',
                        },
                    ),
                TextColumn::make('alamat')
                    ->label('Alamat')
                    ->limit(40)
                    ->tooltip(
                        fn(?Order $record) => $record->alamat ?? '',
                    )
                    ->sortable()
                    ->searchable(),
                TextColumn::make('paymentMethod.type_payment')
                    ->label('Metode Pembayaran')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('shipping_cost')
                    ->label('Shipping cost')
                    ->searchable()
                    ->sortable()
                    ->toggleable()
                    ->money('IDR')
                    ->summarize([
                        Tables\Columns\Summarizers\Sum::make()
                            ->money(),
                    ]),
                TextColumn::make('total_price')
                    ->searchable()
                    ->sortable()
                    ->money('IDR')
                    ->summarize([
                        Tables\Columns\Summarizers\Sum::make()
                            ->money(),
                    ]),
                TextColumn::make('grand_total')
                    ->searchable()
                    ->sortable()
                    ->money('IDR')
                    ->summarize([
                        Tables\Columns\Summarizers\Sum::make()
                            ->money(),
                    ]),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->date()
                    ->toggleable()
                    ->sortable(),
                TextColumn::make('updated_at')
                    ->label('Diperbarui')
                    ->date()
                    ->toggleable()
                    ->sortable(),
            ])
            ->filters([
                Tables\Filters\Filter::make('created_at')
                    ->form([
                        Forms\Components\DatePicker::make('created_from')
                            ->placeholder(fn($state): string => 'Dec 18, ' . now()->subYear()->format('Y')),
                        Forms\Components\DatePicker::make('created_until')
                            ->placeholder(fn($state): string => now()->format('M d, Y')),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['created_from'] ?? null,
                                fn(Builder $query, $date): Builder => $query->whereDate('created_at', '>=', $date),
                            )
                            ->when(
                                $data['created_until'] ?? null,
                                fn(Builder $query, $date): Builder => $query->whereDate('created_at', '<=', $date),
                            );
                    })
                    ->indicateUsing(function (array $data): array {
                        $indicators = [];
                        if ($data['created_from'] ?? null) {
                            $indicators['created_from'] = 'Order from ' . Carbon::parse($data['created_from'])->toFormattedDateString();
                        }
                        if ($data['created_until'] ?? null) {
                            $indicators['created_until'] = 'Order until ' . Carbon::parse($data['created_until'])->toFormattedDateString();
                        }

                        return $indicators;
                    }),
            ])
            ->headerActions([
                //
            ])
            ->actions([
                // Tables\Actions\Action::make('Print')
                //     ->label('Print')
                //     ->icon('heroicon-o-printer')
                //     ->action(function (Order $order) {
                //         // Generate PDF untuk pesanan yang dipilih
                //         $pdf = Pdf::loadView('report/receipt', compact('order'));
                //         // Set ukuran kertas dan orientasi
                //         $pdf->setPaper('A8', 'portrait');

                //         return response()->streamDownload(
                //             fn() => print ($pdf->output()),
                //             'struk_order_' . $order->no_order . '.pdf'
                //         );
                //     })
                //     ->tooltip('Print struk order')
                //     ->outlined()
                //     ->color('primary'),
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->color('success'),
                    Tables\Actions\EditAction::make()
                        ->color('info'),
                    Tables\Actions\DeleteAction::make()
                        ->color('danger'),
                ])->tooltip('Edit, VIew, Delete'),

            ], position: ActionsPosition::BeforeColumns)
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ])
            ->groups([
                Tables\Grouping\Group::make('created_at')
                    ->label('Order Date')
                    ->date()
                    ->collapsible(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            // OrderItemsRelationManager::class,
            // OrderPaymentsRelationManager::class,
            OrderShippingsRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListOrders::route('/'),
            'create' => Pages\CreateOrder::route('/create'),
            'edit' => Pages\EditOrder::route('/{record}/edit'),
        ];
    }

    /** @return Builder<Order> */
    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()->withoutGlobalScope(SoftDeletingScope::class);
    }

    public static function getGloballySearchableAttributes(): array
    {
        return ['no_order', 'user.name'];
    }

    public static function getGlobalSearchResultDetails(Model $record): array
    {
        /** @var Order $record */

        return [
            'User' => optional($record->user)->name,
        ];
    }

    /** @return Builder<Order> */
    public static function getGlobalSearchEloquentQuery(): Builder
    {
        return parent::getGlobalSearchEloquentQuery()->with(['user', 'orderItems']);
    }

    public static function getNavigationBadge(): ?string
    {
        /** @var class-string<Model> $modelClass */
        $modelClass = static::$model;

        return (string) $modelClass::where('status', 'pending')->count();
    }

    /** @return Forms\Components\Component[] */
    public static function getDetailsFormSchema(): array
    {
        return [
            TextInput::make('no_order')
                ->label('No Order')
                ->autocomplete()
                ->disabled(),
            Select::make('user_id')
                ->relationship('user', 'name')
                ->searchable()
                ->required()
                ->createOptionForm([
                    TextInput::make('name')
                        ->required()
                        ->maxLength(255),
                    TextInput::make('phone')
                        ->maxLength(255),
                    TextInput::make('alamat')
                        ->maxLength(255),
                ])
                ->createOptionAction(function (Action $action) {
                    return $action
                        ->modalHeading('Create customer')
                        ->modalSubmitActionLabel('Create customer')
                        ->modalWidth('lg');
                }),
            ToggleButtons::make('status')
                ->inline()
                ->options(OrderStatus::class)
                ->required(),
            Select::make('payment_method_id')
                ->label('Metode Pembayaran')
                ->relationship('paymentMethod', 'type_payment')
                ->required(),
            TextInput::make('shipping_cost')
                ->label('Biaya Pengiriman')
                ->numeric()
                ->live()
                ->afterStateUpdated(function (Forms\Get $get, Forms\Set $set) {
                    $items = $get('orderItems');
                    $shippingCost = $get('shipping_cost') ?? 0;  // Default to 0 if not set
                    $total = 0;

                    foreach ($items as $orderItem) {
                        $product = Product::find($orderItem['product_id']);
                        if ($product) {
                            $total += ($product->price * $orderItem['quantity']);
                        }
                    }

                    $set('total_price', $total);
                    $set('grand_total', $total + $shippingCost);
                })
                ->required(),
            TextInput::make('total_price')
                ->label('Total Price')
                ->numeric()
                ->disabled()
                ->dehydrated()
                ->required(),
            TextInput::make('grand_total')
                ->label('Grand Total')
                ->numeric()
                ->disabled()
                ->dehydrated()
                ->required(),
            TextInput::make('alamat')
                ->label('Alamat')
                ->columnSpan('full')
                ->required(),
        ];
    }

    public static function getItemsRepeater(): Repeater
    {
        return Repeater::make('orderItems')
            ->relationship()
            ->schema([
                Select::make('product_id')
                    ->label('Nama Produk')
                    ->options(Product::query()->pluck('name', 'id'))
                    ->relationship('product', 'name')
                    ->required()
                    ->reactive()
                    ->preload()
                    ->afterStateUpdated(function (Forms\Get $get, Forms\Set $set) {
                        $product = Product::find($get('product_id'));
                        if ($product) {
                            $set('price', $product->price);
                            $set('total', $product->price * $get('quantity'));
                        }
                    })
                    ->distinct()
                    ->disableOptionsWhenSelectedInSiblingRepeaterItems()
                    ->columnSpan([
                        'md' => 3,
                    ])
                    ->searchable(),
                Select::make('varian')
                    ->label('Varian')
                    ->options(function (callable $get) {
                        $productId = $get('product_id');
                        return Varian::query()
                            ->where('product_id', $productId)
                            ->pluck('name', 'name');
                    })
                    ->required()
                    ->reactive()
                    ->columnSpan([
                        'md' => 2,
                    ])
                    ->searchable(),
                TextInput::make('quantity')
                    ->label('Quantity')
                    ->numeric()
                    ->default(1)
                    ->columnSpan([
                        'md' => 1,
                    ])
                    ->live()
                    ->afterStateUpdated(function (Forms\Get $get, Forms\Set $set) {
                        $product = Product::find($get('product_id'));
                        if ($product) {
                            $set('price', $product->price);
                            $set('total', ($product->price * $get('quantity')));
                        }
                    })
                    ->required(),
                TextInput::make('price')
                    ->label('Unit Price')
                    ->disabled()
                    ->dehydrated()
                    ->numeric()
                    ->required()
                    ->columnSpan([
                        'md' => 2,
                    ]),
                TextInput::make('total')
                    ->label('Total')
                    ->disabled()
                    ->dehydrated()
                    ->numeric()
                    ->columnSpan([
                        'md' => 2,
                    ]),

            ])
            ->extraItemActions([
                Action::make('openProduct')
                    ->tooltip('Open product')
                    ->icon('heroicon-m-arrow-top-right-on-square')
                    ->url(function (array $arguments, Repeater $component): ?string {
                        $itemData = $component->getRawItemState($arguments['item']);

                        $product = Product::find($itemData['product_id']);

                        if (!$product) {
                            return null;
                        }

                        return ProductResource::getUrl('edit', ['record' => $product]);
                    }, shouldOpenInNewTab: true)
                    ->hidden(fn(array $arguments, Repeater $component): bool => blank($component->getRawItemState($arguments['item'])['product_id'])),
            ])
            ->defaultItems(1)
            ->hiddenLabel()
            ->columns([
                'md' => 5,
            ])
            ->required();
    }
}

