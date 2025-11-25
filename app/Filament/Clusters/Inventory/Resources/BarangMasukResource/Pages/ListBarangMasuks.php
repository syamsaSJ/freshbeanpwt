<?php

namespace App\Filament\Clusters\Inventory\Resources\BarangMasukResource\Pages;

use App\Filament\Clusters\Inventory\Resources\BarangMasukResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\BrngMsk;
use Filament\Pages\Actions\Action;

class ListBarangMasuks extends ListRecords
{
    protected static string $resource = BarangMasukResource::class;
    protected static ?string $title = 'List Barang Masuk';

    protected function getActions(): array
    {
        return [
            Action::make('Download PDF')
                ->label('Laporan PDF')
                ->action('downloadPdf')
                ->outlined()
                ->icon('heroicon-o-arrow-down-tray'),
            Actions\CreateAction::make()
                ->label('New Barang Masuk'),
        ];
    }

    public function downloadPdf()
    {
        $barangMasuk = BrngMsk::all();

        $pdf = Pdf::loadView('report/barang_masuk_report', compact('barangMasuk'));
        return response()->streamDownload(
            fn() => print ($pdf->output()),
            'laporan_barang_masuk.pdf'
        );
    }
}
