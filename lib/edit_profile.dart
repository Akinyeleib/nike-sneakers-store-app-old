import 'package:flutter/material.dart';
import 'package:nike_sneakers_store_app/signin.dart';

import 'drawer.dart';

String img = "assets/images";

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          margin: const EdgeInsets.only(
            bottom: 10,
            left: 20,
            right: 30,
            top: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("$img/back-icon.png"),
                        ),
                        const Text(
                          "EditProfile",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Done",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    "assets/images/akinyele-ib.jpg",
                  ),
                ),
              ),
              Column(
                children: [
                  // name textfield
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your Name",
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            controller: _nameContoller,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF7F7F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              hintText: "xxxxxxxx",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        "Save Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
