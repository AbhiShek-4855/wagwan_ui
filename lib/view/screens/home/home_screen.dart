import 'package:flutter/material.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "Upcoming Home".ppMoriFont(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
