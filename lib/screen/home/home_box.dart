import 'package:flutter/material.dart';
import 'package:myapp/components/box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: <Widget>[
            Box(icon: Icons.lightbulb, color: Colors.yellow),
            Box(icon: Icons.camera_alt, color: Colors.green),
            Box(icon: Icons.book, color: Colors.blue),
            Box(icon: Icons.percent, color: Colors.pink),
            ],
        ),
      ),
    );
  }
}
