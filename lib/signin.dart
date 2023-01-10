import 'package:flutter/material.dart';

import 'drawer.dart';

String img = "assets/images";

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _nameContoller = TextEditingController();
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("$img/back-icon.png"),
                  ),
                  const Text(
                    "Hello Again!",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: const Text(
                      "Fill Your Details Or Continue With\nSocial Media",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  // email textfield
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email Address  ",
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            controller: _emailContoller,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF7F7F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              hintText: "xyz@gmail.com",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // password textfield
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            obscureText: true,
                            controller: _passwordContoller,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF7F7F9),
                                border: outlineInputBorder,
                                hintText: "password",
                                suffixIcon: Icon(Icons.no_encryption_outlined)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                        // color: Colors.grey,
                        color: Color(0xffC1C1C1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset("$img/google.png"),
                          ),
                          const Text(
                            "Sign In With Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "New User?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "Create Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
