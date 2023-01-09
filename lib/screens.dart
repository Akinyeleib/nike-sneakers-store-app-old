import 'package:flutter/material.dart';

class Onboard1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xff1483C2),
      home: Scaffold(),
    );
  }
}

class Onboard2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Onboard3 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Nike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff0D6EFD),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset("assets/images/white-nike.png"),
                  const Text(
                    "NIKE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
