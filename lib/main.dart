import 'package:flutter/material.dart';
import 'package:marige_app_1/mainpage.dart';

import 'package:marige_app_1/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromARGB(244, 241, 205, 5),
      home: LoginPage(),
      //to remove debug check box from corner
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Road Saathi"),
        backgroundColor: Color.fromARGB(244, 241, 205, 5),
      ),
      //wrap widget & SingleChildScrollView is used when bottom is overflowed by pixcles
      //and also used to ScrollView in Page
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              child: Image(image: AssetImage('Assets/images/G1.jpg')),
            ),
            SizedBox(
              height: 40,
              child: Text(
                'Login into RoadSaathi',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 80,
              width: 450,
              child: TextField(
                //if we want to hide text from user then use "obscureText: True"
                // obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email or Mobile Number ',
                    hintText: 'Enter a Valid Email/Number'),
              ),
            ),
            SizedBox(
              height: 80,
              width: 450,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Your Password'),
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Sathi()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(244, 241, 205, 5),
                  )),
            ),
            TextButton(
              onPressed: () {
                //Jump to the Signup page
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Signup_Page()));
                //TODO CREATE NEW ACCOUNT SCREEN GOES HERE
              },
              child: Text(
                'New User? Create Account',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
