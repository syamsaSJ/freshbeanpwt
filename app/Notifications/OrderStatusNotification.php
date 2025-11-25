<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Messages\BroadcastMessage;
use App\Models\Order;

class OrderStatusNotification extends Notification
{
    use Queueable;

    protected $order;

    public function __construct(Order $order)
    {
        $this->order = $order;
    }

    public function via($notifiable)
    {
        return ['database', 'broadcast', 'mail'];
    }

    public function toMail($notifiable)
    {
        return (new MailMessage)
            ->subject('Order Status Update')
            ->line('Your order status has been updated.')
            ->line('Order ID: ' . $this->order->id)
            ->line('New Status: ' . $this->order->status)
            ->action('View Order', url('/purchase-history'))
            ->line('Thank you for shopping with us!');
    }

    public function toDatabase($notifiable)
    {
        return [
            'order_id' => $this->order->id,
            'status' => $this->order->status,
            'title' => 'Order Status Updated',
            'message' => 'Status pesanan Anda dengan nomor order: #' . $this->order->no_order . ' telah diperbarui menjadi ' . $this->order->status . '. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.',
            'url' => url('/purchase-history' . $this->order->id),
            'button_text' => 'View Order',
        ];
    }

    public function toBroadcast($notifiable)
    {
        return new BroadcastMessage([
            'order_id' => $this->order->id,
            'status' => $this->order->status,
            'title' => 'Order Status Updated',
            'body' => 'Order #' . $this->order->id . ' status updated to ' . $this->order->status,
            'url' => url('/purchase-history' . $this->order->id),
            'button_text' => 'View Order',
        ]);
    }

    public function toArray($notifiable)
    {
        return [
            'order_id' => $this->order->id,
            'status' => $this->order->status,
            'title' => 'Order Status Updated',
            'body' => 'Order #' . $this->order->id . ' status updated to ' . $this->order->status,
            'url' => url('/purchase-history' . $this->order->id),
            'button_text' => 'View Order',
        ];
    }

    
}
