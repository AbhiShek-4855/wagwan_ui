import 'package:flutter/material.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';

class AddEventScreen extends StatelessWidget {
  const AddEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "Upcoming Add Event".ppMoriFont(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
