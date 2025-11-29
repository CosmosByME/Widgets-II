import 'dart:async';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TimerScreenState();
  }
}

class _TimerScreenState extends State<TimerScreen> {
  bool isNOTRunning = true;
  bool isStarted = false;
  final stopWatch = Stopwatch();

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 16), (timer) {
      if (stopWatch.isRunning) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String formatTime(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String threeDigits(int n) => n.toString().padLeft(3, '0');
    final hours = twoDigits(d.inHours);
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    final milliseconds = threeDigits(d.inMilliseconds.remainder(1000));
    return "$hours:$minutes:$seconds.$milliseconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Timer",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ColoredBox(
        color: Colors.deepPurple,
        child: Stack(
          children: [
            Align(
              alignment: FractionalOffset(0.5, 0.30),
              child: Container(
                alignment: Alignment.center,
                width: 280.0,
                height: 280.0,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(color: Colors.pink, width: 10),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  formatTime(stopWatch.elapsed),
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsetsGeometry.only(bottom: 80),
                child: isNOTRunning
                    ? Container(
                        alignment: Alignment.center,
                        width: 200.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              stopWatch.start();
                              isNOTRunning = false;
                              isStarted = true;
                            });
                          },
                          child: Text(
                            "Start",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ),
                      )
                    : isStarted
                    ? Container(
                        alignment: Alignment.center,
                        width: 200.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              stopWatch.stop();
                              isStarted = false;
                            });
                          },
                          child: Text(
                            "Pause",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            alignment: Alignment.center,
                            width: 150.0,
                            height: 65.0,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  stopWatch.reset();
                                  isNOTRunning = true;
                                });
                              },
                              child: Text(
                                "Stop",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.center,
                            width: 150.0,
                            height: 65.0,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  stopWatch.start();
                                  isStarted = true;
                                });
                              },
                              child: Text(
                                "Resume",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
