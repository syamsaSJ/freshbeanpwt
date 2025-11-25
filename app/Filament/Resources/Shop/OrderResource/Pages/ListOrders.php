<?php

namespace App\Filament\Resources\Shop\OrderResource\Pages;

use App\Filament\Resources\Shop\OrderResource;
use App\Models\Order;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Resources\Pages\ListRecords\Tab;
use Illuminate\Database\Eloquent\Builder;
use Filament\Pages\Concerns\ExposesTableToWidgets;
use Barryvdh\DomPDF\Facade\Pdf;
use Filament\Pages\Actions\Action;
use Filament\Forms\Components\DatePicker;

class ListOrders extends ListRecords
{
    protected static string $resource = OrderResource::class;
    protected static ?string $title = 'List Order';
    use ExposesTableToWidgets;
    protected function getActions(): array
    {
        return [
            Action::make('Download PDF')
                ->label('Laporan PDF')
                ->form([
                    DatePicker::make('start_date')
                        ->label('Tanggal Mulai')
                        ->default(now()->startOfMonth())
                        ->format('d/m/Y')
                        ->timezone('Asia/Jakarta')
                        ->required(),
                    DatePicker::make('end_date')
                        ->label('Tanggal Akhir')
                        ->default(now())
                        ->format('d/m/Y')
                        ->timezone('Asia/Jakarta')
                        ->required(),
                ])
                ->action(function (array $data) {
                    // Validasi tanggal
                    $startDate = \Carbon\Carbon::createFromFormat('d/m/Y', $data['start_date']);
                    $endDate = \Carbon\Carbon::createFromFormat('d/m/Y', $data['end_date']);

                    // Ambil data berdasarkan rentang tanggal
                    $order = Order::whereBetween('created_at', [$startDate, $endDate])
                        ->get();

                    $pdf = Pdf::loadView('report/order_report', ['orders' => $order]);
                    // Mengatur ukuran kertas dan orientasi landscape
                    $pdf->setPaper('a4', 'landscape');

                    return response()->streamDownload(
                        fn() => print ($pdf->output()),
                        'laporan_order_' . $startDate->format('d-m-Y') . '-' . $endDate->format('d-m-Y') . '.pdf'
                    );
                })
                ->outlined()
                ->icon('heroicon-o-arrow-down-tray'),
            Actions\CreateAction::make(),
        ];
    }

    protected function getHeaderWidgets(): array
    {
        return [
            OrderResource\Widgets\OrderOverview::class,
        ];
    }

    public function getTabs(): array
    {
        return [
            null => Tab::make('All'),
            'new' => Tab::make()->query(fn($query) => $query->where('status', 'pending')),
            'processing' => Tab::make()->query(fn($query) => $query->where('status', 'Diproses')),
            'shipped' => Tab::make()->query(fn($query) => $query->where('status', 'Dikirim')),
            'delivered' => Tab::make()->query(fn($query) => $query->where('status', 'completed')),
            'cancelled' => Tab::make()->query(fn($query) => $query->where('status', 'canceled')),
        ];
    }
}
