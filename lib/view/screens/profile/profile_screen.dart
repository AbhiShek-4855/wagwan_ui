import 'package:flutter/material.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "Upcoming Profile".ppMoriFont(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
