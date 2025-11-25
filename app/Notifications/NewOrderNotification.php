<?php

namespace App\Notifications;

use App\Models\Order;
use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\DatabaseMessage;

class NewOrderNotification extends Notification
{
    public function via($notifiable)
    {
        return ['database'];  // This specifies that notifications will be sent to the database
    }

    public function toDatabase($notifiable)
    {
        return [
            'message' => 'A new order has been placed successfully!',
        ];
    }
}


