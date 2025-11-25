<!-- resources/views/components/sidebar-chat.blade.php -->
<style>
    /* Ensure correct layout and spacing */
    #chat-messages {
        display: flex;
        flex-direction: column;
        gap: 1rem;
    }

    #chat-messages .message {
        display: flex;
        align-items: flex-start;
        gap: 0.5rem;
    }

    #chat-messages .message .avatar {
        width: 40px;
        height: 40px;
        border-radius: 50%;
    }

    #chat-messages .message .text-container {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    #chat-messages .message .text-container .name {
        font-weight: bold;
    }

    #chat-messages .message .text-container .message-text {
        padding: 0.75rem;
        border-radius: 0.5rem;
    }

    #chat-messages .message.sent .text-container .message-text {
        background-color: #d1e7dd;
        color: #0f5132;
        text-align: right;
    }

    #chat-messages .message.received .text-container .message-text {
        background-color: #f8d7da;
        color: #842029;
    }
</style>
<div id="sidebar-chat"
    class="fixed top-0 right-0 h-full w-80 bg-white shadow-lg transform translate-x-full transition-transform z-40">
    <div class="flex items-center justify-between p-4 border-b">
        <h2 class="text-xl font-semibold">Chat</h2>
        <button id="close-sidebar" class="text-gray-500 hover:text-gray-700">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="h-6 w-6">
                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
        </button>
    </div>
    <div class="flex flex-col h-[calc(100%-64px)] p-4 overflow-hidden">
        <div id="chat-messages" class="flex-1 overflow-y-auto space-y-4">
            <!-- Chat messages will be dynamically inserted here -->
        </div>
        <div class="border-t mt-auto flex items-center space-x-2">
            <input id="message-input" type="text" placeholder="Type your message..."
                class="w-full p-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 transition" />
            <button id="send-message" class="p-2 bg-blue-500 text-white rounded-full hover:bg-blue-600 transition">
                <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M6 12 3.269 3.125A59.769 59.769 0 0 1 21.485 12 59.768 59.768 0 0 1 3.27 20.875L5.999 12Zm0 0h7.5" />
                </svg>
            </button>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const chatMessages = document.getElementById('chat-messages');
        const messageInput = document.getElementById('message-input');
        const sendMessage = document.getElementById('send-message');
        const receiverId = 1; // Set receiverId to the ID of the super_admin user

        function fetchMessages() {
            fetch(`/chat/messages/${receiverId}`)
                .then(response => response.json())
                .then(messages => {
                    chatMessages.innerHTML = '';
                    messages.forEach(message => {
                        const messageDiv = document.createElement('div');
                        messageDiv.className = 'flex items-start space-x-2';
                        messageDiv.classList.add(message.sender_id == {{ Auth::id() }} ? 'justify-start' : 'justify-end');

                        const avatar = document.createElement('img');
                        avatar.src = message.sender_id == {{ Auth::id() }} ? 'https://via.placeholder.com/150' : 'https://via.placeholder.com/150'; // Replace with actual avatar URL
                        avatar.className = 'w-10 h-10 rounded-full';
                        avatar.alt = 'Avatar';

                        const textContainer = document.createElement('div');
                        textContainer.className = message.sender_id == {{ Auth::id() }} ? 'flex flex-col items-start space-y-2' : 'flex flex-col items-end space-y-2';

                        const name = document.createElement('p');
                        name.className = message.sender_id == {{ Auth::id() }} ? 'text-gray-800 font-semibold' : 'text-blue-600 font-semibold';
                        name.innerText = message.sender.name;

                        const textDiv = document.createElement('div');
                        textDiv.className = message.sender_id == {{ Auth::id() }} ? 'bg-gray-100 p-3 rounded-lg' : 'bg-blue-100 p-3 rounded-lg text-right';
                        textDiv.innerHTML = `<p>${message.message}</p>`;

                        textContainer.appendChild(name);
                        textContainer.appendChild(textDiv);

                        messageDiv.appendChild(avatar);
                        messageDiv.appendChild(textContainer);
                        chatMessages.appendChild(messageDiv);
                    });
                });
        }

        sendMessage.addEventListener('click', function () {
            const message = messageInput.value.trim();
            if (message) {
                fetch('/chat/send', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                    },
                    body: JSON.stringify({ receiver_id: receiverId, message: message })
                })
                    .then(response => response.json())
                    .then(message => {
                        messageInput.value = '';
                        fetchMessages();
                    });
            }
        });

        fetchMessages();
        setInterval(fetchMessages, 50000); // Poll every 5 seconds for new messages
    });
</script>