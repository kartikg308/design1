import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Women extends StatefulWidget {
  @override
  _Women createState() => _Women();
}

class _Women extends State<Women> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Explore',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset('assets/new/Dresses.png'),
            ],
          ),
        ],
      ),
    );
  }
}
