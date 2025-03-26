import 'package:flutter/material.dart';

import 'config/route.dart';
import 'core/constants/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wagwan UI',
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
    );
  }
}
