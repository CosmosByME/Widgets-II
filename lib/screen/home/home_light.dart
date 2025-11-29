import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOn = false;

  void changeLight() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 10,
        title: const Text("Light Control", style: TextStyle(color: Colors.white),),
        leading: BackButton(color: Colors.yellow),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white,)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: changeLight,
              color: isOn ? Colors.yellow : Colors.grey,
              iconSize: 50,
              icon: const Icon(Icons.lightbulb_outline),
              isSelected: isOn,
              selectedIcon: const Icon(Icons.lightbulb),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: Container(
                color: isOn ? Colors.yellow : Colors.grey,
                padding: EdgeInsets.all(8),
                child: Text(isOn ?  'TURN LIGHT ON' : 'TURN LIGHT OFF'),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.edit, color: Colors.white,),
      ),
    );
  }
}
