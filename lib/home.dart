import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
        ),
        drawer: const Drawer(),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
