<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\User;
use App\Models\Chat;
use Illuminate\Support\Facades\Auth;

class MessageSidebar extends Component
{
    public $showSidebar = false;
    public $customers;
    public $receiver;
    public $messages = [];  // Tambahkan properti messages
    public $message;

    public function mount()
    {
        if (Auth::user()->hasRole('super_admin')) {
            $this->customers = User::role('customer')->get();
        } else {
            $this->receiver = User::role('super_admin')->first(); // Asumsi ada satu super_admin
        }
        $this->loadMessages();  // Memuat pesan saat komponen dimuat
    }

    public function selectCustomer(User $customer)
    {
        $this->receiver = $customer;
        $this->loadMessages();  // Muat pesan saat pelanggan dipilih
    }

    public function loadMessages()
    {
        if ($this->receiver) {
            $this->messages = Chat::where(function ($query) {
                $query->where('user_id', Auth::id())
                    ->where('receiver_id', $this->receiver->id);
            })->orWhere(function ($query) {
                $query->where('user_id', $this->receiver->id)
                    ->where('receiver_id', Auth::id());
            })->get();
        }
    }

    public function sendMessage()
    {
        if ($this->message && $this->receiver) {
            Chat::create([
                'user_id' => Auth::id(),
                'receiver_id' => $this->receiver->id,
                'message' => $this->message,
                'read' => false,
            ]);
            $this->message = '';
            $this->loadMessages();  // Muat ulang pesan setelah mengirim
        }
    }

    public function toggleSidebar()
    {
        $this->showSidebar = !$this->showSidebar;

        // Close chat detail if the sidebar is opened or vice versa
        if ($this->showSidebar && $this->receiver) {
            $this->receiver = null;
        }
    }

    public function render()
    {
        return view('livewire.message-sidebar');
    }
}
