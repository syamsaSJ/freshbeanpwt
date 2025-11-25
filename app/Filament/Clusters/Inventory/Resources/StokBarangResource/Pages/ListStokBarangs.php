<?php

namespace App\Filament\Clusters\Inventory\Resources\StokBarangResource\Pages;

use App\Filament\Clusters\Inventory\Resources\StokBarangResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\StokBrng;
use Filament\Pages\Actions\Action;

class ListStokBarangs extends ListRecords
{
    protected static string $resource = StokBarangResource::class;
    protected static ?string $title = 'List Stok Barang';

    protected function getActions(): array
    {
        return [
            Action::make('Download PDF')
                ->label('Laporan PDF')
                ->action('downloadPdf')
                ->outlined()
                ->icon('heroicon-o-arrow-down-tray'),
            Actions\CreateAction::make()
                ->label('New Stok Barang'),
        ];
    }

    public function downloadPdf()
    {
        $StokBarang = StokBrng::all();

        $pdf = Pdf::loadView('report/stok_barang_report', compact('StokBarang'));
        return response()->streamDownload(
            fn() => print ($pdf->output()),
            'laporan_stok_barang.pdf'
        );
    }

    protected function getHeaderWidgets(): array
    {
        return StokBarangResource::getWidgets();
    }
}
