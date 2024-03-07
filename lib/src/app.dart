import 'package:coffee/src/features/menu/menu_screen.dart';
import 'package:coffee/src/theme/theme.dart';
import 'package:flutter/material.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const MenuScreen(),
    );
  }
}
