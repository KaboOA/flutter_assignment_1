// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.amber,
    Colors.purple,
    Colors.teal,
    Colors.blue,
    Colors.brown,
    Colors.pink,
    Colors.lightGreen,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          'Assignment 1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: colors[index],
          ),
          child: const Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Top Left',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Center',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Bottom Right',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
