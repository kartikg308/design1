import 'package:design/women.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreen createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: AppBar(
          backgroundColor: Color(0xFFE5E5E5),
          title: CupertinoSearchTextField(
            borderRadius: BorderRadius.circular(20),
            placeholder: 'Search',
            suffixIcon: const Icon(Icons.camera_alt_rounded),
            suffixMode: OverlayVisibilityMode.always,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/new/shopping.png'),
                  color: Colors.black,
                )),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xFFFD3E75),
            labelColor: Color(0xFFFD3E75),
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('Women'),
              ),
              Tab(
                child: Text('Men'),
              ),
              Tab(
                child: Text('Kids'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Women(),
            Center(
              child: Text('Men'),
            ),
            Center(
              child: Text('Kids'),
            ),
          ],
        ),
      ),
    );
  }
}
