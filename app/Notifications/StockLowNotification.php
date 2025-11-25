<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Twilio\Rest\Client;
use NotificationChannels\Twilio\TwilioSmsMessage;

class StockLowNotification extends Notification implements ShouldQueue
{
    use Queueable;

    protected $stokBrng;

    public function __construct($stokBrng)
    {
        $this->stokBrng = $stokBrng;
    }

    public function via($notifiable)
    {
        return ['mail', 'database', 'twilio'];
    }

    public function toMail($notifiable)
    {
        \Log::info('Mengirim email notifikasi.');
        return (new MailMessage)
            ->line('Stok tersedia kurang dari security stok.')
            ->line('Produk: ' . $this->stokBrng->product->name)
            ->line('Stok Tersedia: ' . $this->stokBrng->stokTersedia)
            ->line('Security Stok: ' . $this->stokBrng->securityStok)
            ->line('Segera lakukan tindakan yang diperlukan.');
    }

    public function toDatabase($notifiable)
    {
        return [
            'product_id' => $this->stokBrng->product_id,
            'stok_tersedia' => $this->stokBrng->stokTersedia,
            'security_stok' => $this->stokBrng->securityStok,
        ];
    }

    public function toTwilio($notifiable)
    {
        return (new TwilioSmsMessage())
            ->content('Low stock alert for ' . $this->stokBrng->name . '. Please check the inventory.');
    }
}
