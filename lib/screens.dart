import 'package:flutter/material.dart';

String img = "assets/images";

class Onboard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff1483C2),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text(
                      "WELCOME TO NIKE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffECECEC),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset("$img/scrib-lower.png"),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.grey,
                    child: Image.asset("$img/onboard-1-nike.png"),
                  )
                  // Image.asset("$img/transparent-nike.png"),
                ],
              ),
            )
          ],
        ),
      ),
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
