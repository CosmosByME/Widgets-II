import 'package:flutter/material.dart';
import 'package:myapp/screen/timer/timer.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Timer',
      home: TimerScreen(),
    );
  }
}