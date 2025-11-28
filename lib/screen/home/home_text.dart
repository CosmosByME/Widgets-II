import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {},
          color: Colors.cyan,
          iconSize: 50,
          highlightColor: Colors.red,
          icon: const Icon(Icons.lightbulb),
        )
      ),
    );
  }
}