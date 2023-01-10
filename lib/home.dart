import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
          title: const Text("Home "),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff1483C2),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("first_name last_name"),
                accountEmail: null,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    // "assets/images/Akinyele-ib.jpg",
                    "assets/images/onboard-2-nike.png",
                  ),
                ),
                decoration: BoxDecoration(
                    // color: Color(0xff1483C2),
                    ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person_outline_sharp,
                  color: Colors.white,
                ),
                title: myText("Profile"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.luggage,
                  color: Colors.white,
                ),
                title: myText("My Cart"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
                title: myText("Favorite"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.delivery_dining,
                  color: Colors.white,
                ),
                title: myText("Orders"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
                title: myText("Notifications"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
                title: myText("Settings"),
                onTap: () {},
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: const Divider(
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                title: myText("Sign Out"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text myText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
