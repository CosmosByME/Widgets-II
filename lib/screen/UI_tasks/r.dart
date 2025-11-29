import 'package:flutter/material.dart';

class rScreen extends StatelessWidget {
  const rScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.redAccent,
              child: Center(child: Text("R.", style: TextStyle(fontSize: 320))),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel consectetur magna, vel vehicula tellus. Nullam arcu augue, interdum consectetur bibendum at, luctus a purus. Nullam vitae ipsum libero.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
