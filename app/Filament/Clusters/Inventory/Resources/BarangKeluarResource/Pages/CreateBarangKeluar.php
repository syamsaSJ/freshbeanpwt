<?php

namespace App\Filament\Clusters\Inventory\Resources\BarangKeluarResource\Pages;

use App\Filament\Clusters\Inventory\Resources\BarangKeluarResource;
use App\Filament\Clusters\Inventory\Resources\BarangMasukResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use App\Models\Product;
use App\Models\User;
use App\Models\StokBrng;
use Twilio\Rest\Client;

class CreateBarangKeluar extends CreateRecord
{
    protected static string $resource = BarangKeluarResource::class;
    protected static ?string $title = 'Create Barang Keluar';

    protected function afterCreate(): void
    {
        // Mengambil stok barang berdasarkan ID produk yang baru saja dikurangi stoknya
        $stokBrng = StokBrng::where('product_id', $this->record->product_id)->first();

        if ($stokBrng) {
            // Mengambil produk yang terkait dengan stok barang
            $product = Product::find($stokBrng->product_id);

            // Mengambil pengguna yang sedang login
            $user = auth()->user();

            // Memeriksa apakah stok tersisa kurang atau sama dengan security stok
            if ($stokBrng->stokTersedia <= $stokBrng->securityStok) {
                Notification::make()
                    ->title('Stok limit')
                    ->icon('heroicon-o-shopping-bag')
                    ->body("**Stok untuk produk {$product->name} telah tersisa {$stokBrng->stokTersedia}. Silahkan isi.**")
                    ->actions([
                        Action::make('View')
                            ->url(BarangMasukResource::getUrl('create', ['product_id' => $stokBrng->product_id])),
                    ])
                    ->sendToDatabase($user);

                // Kirim whatsapp konfirmasi ke admin
                $sid = env('TWILIO_SID');
                $token = env('TWILIO_TOKEN');
                $twilio = new Client($sid, $token);

                $message = $twilio->messages->create(
                    "whatsapp:+6287803280418", // to
                    [
                        "from" => "whatsapp:" . env('TWILIO_SENDER_NUMBER'),
                        "body" => "**Stok untuk {$product->name} telah tersisa {$stokBrng->stokTersedia}. Silahkan isi.**"
                    ]
                );
            }
        }
    }
}
