<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Notifications\StockLowNotification;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Notification;
use Twilio\Rest\Client;

class StokBrng extends Model
{
    use HasFactory;
    use Notifiable;

    protected $fillable = [
        'product_id',
        'supplier_id',
        'stokAwal',
        'stokMasuk',
        'stokKeluar',
        'stokTersedia',
        'securityStok',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    protected static function booted()
    {
        static::creating(function ($stokBrng) {
            $stokBrng->stokTersedia = $stokBrng->stokAwal + $stokBrng->stokMasuk - $stokBrng->stokKeluar;
        });

        static::updating(function ($stokBrng) {
            $stokBrng->stokTersedia = $stokBrng->stokAwal + $stokBrng->stokMasuk - $stokBrng->stokKeluar;

            if ($stokBrng->stokTersedia < $stokBrng->securityStok) {
                // $notifiable = (object) [
                //     'email' => 'julyindasyamsa@gmail.com',
                //     'phone_number' => 'whatsapp:+6287803280418'
                // ];

                // Notification::route('mail', $notifiable->email)
                //     ->notify(new StockLowNotification($stokBrng));
                // Notification::route('twilio', $notifiable->phone_number)
                //     ->notify(new StockLowNotification($stokBrng));
                
                // Kirim whatsapp konfirmasi ke admin
                $sid = env('TWILIO_SID');
                $token = env('TWILIO_TOKEN');
                $twilio = new Client($sid, $token);

                $message = $twilio->messages
                    ->create(
                        "whatsapp:+6287803280418", // to
                        array(
                            "from" => "whatsapp:" . env('TWILIO_SENDER_NUMBER'),
                            "body" => "**Stok untuk {$stokBrng->product->name} telah tersisa {$stokBrng->stokTersedia}. Silahkan isi.**"
                        )
                    );
            }
        });
    }
}
