<?php

namespace App\Filament\Clusters\Inventory\Resources\BarangKeluarResource\Pages;

use App\Filament\Clusters\Inventory\Resources\BarangKeluarResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\BrngKlr;
use Filament\Pages\Actions\Action;

class ListBarangKeluars extends ListRecords
{
    protected static string $resource = BarangKeluarResource::class;
    protected static ?string $title = 'List Barang Keluar';

    protected function getActions(): array
    {
        return [
            Action::make('Download PDF')
                ->label('Laporan PDF')
                ->action('downloadPdf')
                ->outlined()
                ->icon('heroicon-o-arrow-down-tray'),
            Actions\CreateAction::make()
                ->label('New Barang Keluar'),
        ];
    }

    public function downloadPdf()
    {
        $barangKeluar = BrngKlr::all();

        $pdf = Pdf::loadView('report/barang_keluar_report', compact('barangKeluar'));
        return response()->streamDownload(
            fn() => print ($pdf->output()),
            'laporan_barang_keluar.pdf'
        );
    }
}
