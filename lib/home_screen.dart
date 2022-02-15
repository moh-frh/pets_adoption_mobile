// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Animal {
  String name;
  double age;
  bool isMale;
  String imageUrl;

  Animal(this.name, this.age, this.isMale, this.imageUrl);
}

class Category {
  String? name;
  String? icon;
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Animal> animals = [
    Animal('name', 22, true, 'assets/images/youyou.jpg'),
    Animal('name', 22, true, 'assets/images/chirazi.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.bar_chart_sharp),
              Column(
                children: [
                  Text('Location', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: Theme.of(context).primaryColor.withOpacity(0.5))),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Theme.of(context).primaryColor),
                      Text('Algeria, ', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Thenia'),
                    ],
                  )
                ],
              ),
              CircleAvatar(
                child: Image(
                  image: AssetImage('images/me.jpg'),
                  width: 20,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
