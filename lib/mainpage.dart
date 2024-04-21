import 'package:flutter/material.dart';

import 'package:marige_app_1/sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Sathi());
  }
}

class Sathi extends StatefulWidget {
  const Sathi({super.key});

  @override
  State<Sathi> createState() => _SathiState();
}

class _SathiState extends State<Sathi> {
  var _pagesData = [HomePage(), Service(), Account()];

  //bottom navigationbar page controller
  //variable declaration

  int _selecteItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoadSathi'),
        backgroundColor: Color.fromARGB(244, 241, 205, 5),

        //add settings button on appbar
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.search,
          color: Colors.black,
        ),
        backgroundColor: Color.fromARGB(244, 241, 205, 5),
      ),
      body: Center(child: _pagesData[_selecteItem]),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.design_services), label: 'Services'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ],
          //change state of navigation bar
          fixedColor: Color.fromARGB(244, 241, 205, 5),
          currentIndex: _selecteItem,
          onTap: (setValue) {
            setState(() {
              _selecteItem = setValue;
            });
          }),
    );
  }
}
