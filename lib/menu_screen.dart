// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

Color primary = Colors.teal;
Color secondary = Color.fromARGB(48, 96, 96, 1);

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<String> menuItems = [
    'Adoption',
    'Couplement',
    'Perdu',
    'Produit',
    'Donation',
    'Settings',
  ];

  int stateMenuItem = 0;

  List<AssetImage> menuImages = [
    AssetImage('images/paws.png'),
    AssetImage('images/paws.png'),
    AssetImage('images/paws.png'),
    AssetImage('images/paws.png'),
    AssetImage('images/paws.png'),
    AssetImage('images/paws.png'),
  ];

  Widget menuRow(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          stateMenuItem = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Image(
              image: menuImages[index],
              width: 30,
              color: stateMenuItem == index ? Colors.white : Colors.white.withOpacity(0.5),
            ),
            SizedBox(
              width: 10,
            ),
            Text(menuItems[index],
                style: TextStyle(
                    color: stateMenuItem == index ? Colors.white : Colors.white.withOpacity(0.5),
                    fontSize: 20,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    child: Image(
                      image: AssetImage('images/me.jpg'),
                      width: 25,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                  Text(
                    "mohamed fouaz",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                      Text(
                        "Software engineer",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Column(
              children: menuItems
                  .asMap()
                  .entries
                  .map((mapEntry) => menuRow(mapEntry.key))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/paws.png'),
                    width: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Settings   |   Log out',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
