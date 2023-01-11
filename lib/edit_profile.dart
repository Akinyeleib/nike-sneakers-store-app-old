import 'package:flutter/material.dart';
import 'package:nike_sneakers_store_app/signin.dart';

import 'drawer.dart';
import 'profile.dart';

String img = "assets/images";

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _fnameContoller = TextEditingController();
  final TextEditingController _lnameContoller = TextEditingController();
  final TextEditingController _countryContoller = TextEditingController();
  String fname = "first_name", lname = "last_name";

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
          child: SingleChildScrollView(
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
                          Builder(builder: (context) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Profile()),
                                );
                              },
                              child: const Text(
                                "Done",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(
                          "assets/images/akinyele-ib.jpg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "$fname $lname",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Builder(builder: (context) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                          },
                          child: const Text(
                            "Change Profile Picture",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
                Column(
                  children: [
                    // first name textfield
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "First Name",
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: TextField(
                              controller: _fnameContoller,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF7F7F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "firstName",
                                suffixIcon: Icon(Icons.question_mark),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // last name textfield
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Last Name",
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: TextField(
                              controller: _lnameContoller,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF7F7F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "lastName",
                                suffixIcon: Icon(Icons.question_mark),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // last name textfield
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Country",
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: TextField(
                              controller: _lnameContoller,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF7F7F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "country",
                                suffixIcon: Icon(Icons.question_mark),
                              ),
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
                      onTap: () {
                        fname = _fnameContoller.text;
                        lname = _lnameContoller.text;
                        setState(() {});
                      },
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
      ),
    );
  }
}
