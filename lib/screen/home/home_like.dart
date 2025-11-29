import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLike = true;

  void changeLikeValue() {
    setState(() {
      isLike = !isLike;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: changeLikeValue,
          color: Colors.red,
          iconSize: 50,
          icon: const Icon(Icons.favorite_outline),
          isSelected: isLike,
          selectedIcon: const Icon(Icons.favorite),
        ),
      ),
    );
  }
}
