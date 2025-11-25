<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Chat;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class ChatComponent extends Component
{
    public $message;
    public $messages;
    public $receiver;

    protected $rules = [
        'message' => 'required|string|max:255',
    ];

    public function mount(User $receiver)
    {
        $this->receiver = $receiver;
        $this->loadMessages();
    }

    public function loadMessages()
    {
        $this->messages = Chat::where(function ($query) {
            $query->where('user_id', Auth::id())
                ->where('receiver_id', $this->receiver->id);
        })
            ->orWhere(function ($query) {
                $query->where('user_id', $this->receiver->id)
                    ->where('receiver_id', Auth::id());
            })
            ->orderBy('created_at', 'asc')
            ->get();
    }

    public function sendMessage()
    {
        Chat::create([
            'user_id' => Auth::id(),
            'receiver_id' => $this->receiver->id,
            'message' => $this->message,
        ]);

        $this->reset('message');
        $this->loadMessages(); // Reload messages
    }

    public function render()
    {
        return view('livewire.chat-component');
    }
}
