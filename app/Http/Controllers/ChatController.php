<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class ChatController extends Controller
{
    public function getConversations()
    {
        $userId = Auth::id();
        $conversations = Message::where('sender_id', $userId)
                                ->orWhere('receiver_id', $userId)
                                ->with(['receiver', 'sender'])
                                ->distinct('receiver_id')
                                ->get()
                                ->groupBy('receiver_id');

        return response()->json($conversations);
    }

    public function sendMessage(Request $request)
    {
        $validated = $request->validate([
            'receiver_id' => 'required|exists:users,id',
            'message' => 'required|string',
        ]);

        $message = Message::create([
            'sender_id' => Auth::id(),
            'receiver_id' => $validated['receiver_id'],
            'message' => $validated['message'],
        ]);

        return response()->json($message->load(['sender', 'receiver']));
    }

    public function fetchMessages($receiverId)
    {
        $userId = Auth::id();

        $messages = Message::where(function ($query) use ($userId, $receiverId) {
            $query->where('sender_id', $userId)
                ->where('receiver_id', $receiverId);
        })->orWhere(function ($query) use ($userId, $receiverId) {
            $query->where('sender_id', $receiverId)
                ->where('receiver_id', $userId);
        })->with(['sender', 'receiver'])
            ->get();

        return response()->json($messages);
    }
}

