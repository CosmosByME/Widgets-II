import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final IconData icon;
  final Color? color;
  const Box({required this.icon, super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      height: 150,
      width: 150,
      color: color,
      child: Icon(icon, size: 75, color: Colors.white),
    );
  }
}
