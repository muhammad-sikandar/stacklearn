import 'package:flutter/material.dart';
import '../services/chat_services.dart';
import '../services/messagepoe.dart';

import '../services/poeauth.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  List<Message> _messages = [];

  @override
  void initState() {
    super.initState();
    _chatService.getMessages().listen((messages) {
      setState(() {
        _messages = messages;
      });
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _sendMessage(String messageText) {
    if (messageText.trim().isNotEmpty) {
      final message = Message(text: messageText, isMe: true, senderEmail: '');
      _chatService.sendMessage(message);
      _textEditingController.clear();
    }
  }

  void _login() {
    _authService.login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Application'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (ctx, index) {
                final message = _messages[index];
                return Align(
                  alignment: message.isMe ? Alignment.topRight : Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: message.isMe ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      message.text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      _sendMessage(_textEditingController.text);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.login),
        onPressed: _login,
      ),
    );
  }
}