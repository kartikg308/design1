import 'package:design/main.dart';
import 'package:design/search_screen.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _Screen createState() => _Screen();
}

class _Screen extends State<Screen> {
  int selected = 0;
  List<Widget> widgets = <Widget>[
    SearchScreen(),
    Center(child: Text('Screen2')),
    MyHomePage(title: 'Screen'),
  ];

  ontap(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: widgets.elementAt(selected),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/new/Search-Inactive.png'),
                    size: 30,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/new/shopping.png'),
                    size: 30,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/new/Profile-Active.png'),
                    size: 30,
                  ),
                  label: '',
                )
              ],
              selectedItemColor: Color(0xFFFD3E75),
              currentIndex: selected,
              onTap: ontap,
              type: BottomNavigationBarType.fixed,
            )));
  }
}
