import 'package:flutter/material.dart';

//import 'app.dart';
int a = 30;
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ElevatedButton(onPressed: null, child: Text("Disabled")),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                autofocus: false,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shadowColor: Colors.blueAccent,
                  elevation: 5,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Enabled"),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ),
  );
}
