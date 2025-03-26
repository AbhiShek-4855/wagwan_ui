import 'package:flutter/material.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "Upcoming Chats".ppMoriFont(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
