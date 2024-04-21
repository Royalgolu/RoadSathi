import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup_Page(),
    );
  }
}

class Signup_Page extends StatefulWidget {
  const Signup_Page({super.key});

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Your Account'),
        backgroundColor: Color.fromARGB(244, 241, 205, 5),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(5)),
            SizedBox(
              height: 25,
              child: Text(
                'Signup in RoadSathi',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            //Padding is used for give space from top
            Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 80,
              width: 450,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    hintText: 'First Name'),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            SizedBox(
                height: 80,
                width: 450,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                      hintText: 'Last Name'),
                )),
            Padding(padding: EdgeInsets.all(5)),
            SizedBox(
                height: 80,
                width: 450,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mob.Number',
                      hintText: '+917348444343'),
                )),
            Padding(padding: EdgeInsets.all(5)),
            SizedBox(
                height: 80,
                width: 450,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email id',
                      hintText: 'abc@gmail.com'),
                )),
            Padding(padding: EdgeInsets.all(5)),
            SizedBox(
                height: 80,
                width: 450,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Set Password',
                      hintText: 'Password'),
                )),
            Padding(padding: EdgeInsets.all(5)),
            ElevatedButton(
              onPressed: () {},
              child: Text('SignUup'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fixedSize: const Size(250, 50),
                  backgroundColor: Color.fromARGB(244, 241, 205, 5)),
            )
          ],
        ),
      ),
    );
  }
}
