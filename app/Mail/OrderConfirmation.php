<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Order;

class OrderConfirmation extends Mailable
{
    use Queueable, SerializesModels;

    public $order;
    public $orderShipping;
    public $orderPayment;
    public $orderItems;

    public function __construct($order, $orderShipping = null, $orderPayment = null)
    {
        $this->order = $order;
        $this->orderShipping = $orderShipping;
        $this->orderPayment = $orderPayment;
        $this->orderItems = $order->orderItems; // Assuming relationship is defined in Order model
    }

    public function build()
    {
        return $this->view('emails.order_confirmation')
            ->with([
                'order' => $this->order,
                'orderShipping' => $this->orderShipping,
                'orderPayment' => $this->orderPayment,
                'orderItems' => $this->orderItems,
            ]);
    }
}



