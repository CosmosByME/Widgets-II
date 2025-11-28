import 'package:flutter/material.dart';

class YandexBackground extends StatefulWidget {
  const YandexBackground({super.key});

  @override
  State<YandexBackground> createState() => _YandexBackgroundState();
}

class _YandexBackgroundState extends State<YandexBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(color: const Color.fromARGB(255, 236, 184, 42)),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.white)),
                Expanded(child: Container(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
