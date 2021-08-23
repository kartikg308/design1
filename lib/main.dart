import 'package:design/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/new/Menu.png'),
          onPressed: () {},
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(alignment: AlignmentDirectional.bottomCenter, children: [
            SizedBox(
              child: Image.asset(
                'assets/new/pphoto.png',
              ),
            ),
            Text(
              'Eric Writz',
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(11, 30, 11, 8.5),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Card(
                          elevation: 3.5,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFFFFE6A8),
                                  child: Image.asset('assets/new/Icon.png'),
                                  radius: 31,
                                ),
                                Text(
                                  'Credit Cards',
                                  style: TextStyle(color: Color(0xFFDDA000)),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
                Container(
                  height: 155,
                  width: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                    child: Card(
                        elevation: 3.5,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFA8BDFF),
                                child: Image.asset('assets/new/settings.png'),
                                radius: 31,
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(color: Color(0xFF3F65DD)),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(11, 0, 11, 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Container(
                    height: 155,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Card(
                          elevation: 3.5,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFFFFB9A8),
                                  child: Image.asset('assets/new/Barcode.png'),
                                  radius: 31,
                                ),
                                Text(
                                  'Referral Code',
                                  style: TextStyle(color: Color(0xFFC0583E)),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
                Container(
                  height: 155,
                  width: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                    child: Card(
                        elevation: 3.5,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFA8FFAB),
                                child: Image.asset('assets/new/Shape.png'),
                                radius: 31,
                              ),
                              Text(
                                'Support',
                                style: TextStyle(color: Color(0xFF3DB241)),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
