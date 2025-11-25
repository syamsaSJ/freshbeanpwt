<div class="fixed top-0 right-0 h-full w-80 bg-white shadow-lg border-l border-gray-200"
    style="transform: {{ $receiver ? 'translateX(0)' : 'translateX(100%)' }}; transition: transform 0.3s;">
    <div class="flex flex-col h-full">
        <!-- Chat Header -->
        <div class="p-4 border-b border-gray-200 flex items-center">
            <img src="{{ $receiver->avatar_url }}" alt="{{ $receiver->name }}"
                class="w-10 h-10 rounded-full object-cover">
            <div class="ml-3">
                <strong>{{ $receiver->name }}</strong>
            </div>
        </div>

        <!-- Chat Messages -->
        <div class="flex-1 overflow-y-auto p-4 bg-gray-100" style="max-height: calc(100vh - 150px);">
            @foreach($messages as $chat)
                <div class="mb-2 {{ $chat->user_id == auth()->id() ? 'text-right' : 'text-left' }}">
                    <div class="p-2 {{ $chat->user_id == auth()->id() ? 'bg-blue-200' : 'bg-gray-200' }} rounded">
                        <p>{{ $chat->message }}</p>
                        <small class="text-muted">{{ $chat->created_at->format('H:i') }}</small>
                    </div>
                </div>
            @endforeach
        </div>

        <!-- Chat Input -->
        <div class="p-4 border-t border-gray-200">
            <div class="flex">
                <input type="text" wire:model="message" class="form-control flex-1 mr-2" placeholder="Ketik pesan...">
                <button wire:click="sendMessage" class="btn btn-primary">Kirim</button>
            </div>
        </div>
    </div>
</div>