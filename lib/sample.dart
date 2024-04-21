import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marige_app_1/rental_bikes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //child: Text('This is Home Page')
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.yellowAccent,
            indicatorBackgroundColor: Colors.grey,
            // ignore: sort_child_properties_last
            children: [
              Image.asset(
                'Assets/images/image5.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'Assets/images/image2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'Assets/images/bike2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'Assets/images/image3.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'Assets/images/bike1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'Assets/images/image4.jpg',
                fit: BoxFit.cover,
              ),
            ],
            onPageChanged: (value) {
              // ignore: avoid_print
              print('Page Changed:$value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Suggestions",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2)),
          Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Book Your Ride as Your Choice",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(3)),

          Align(
            alignment: Alignment.centerLeft,
            child: Row(
                //MainAxisalignment.speceEvenly is used for give equal space from both sides
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Column(children: [
                      Ink.image(
                        height: 90,
                        width: 90,
                        image: const AssetImage('Assets/images/var.jpg'),
                      ),
                      Text(
                        'Car',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(10)),
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Column(children: [
                      Ink.image(
                        height: 90,
                        width: 90,
                        image: const AssetImage('Assets/images/Yello.jpg'),
                      ),
                      Text(
                        'Bike',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(10)),
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Column(children: [
                      Ink.image(
                        height: 90,
                        width: 90,
                        image: const AssetImage(
                            'Assets/images/electric-rickshaw.jpg'),
                      ),
                      Text(
                        'E-Rickshaw',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(10)),
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Column(children: [
                      Ink.image(
                        height: 90,
                        width: 90,
                        image: const AssetImage('Assets/images/Bus.jpg'),
                      ),
                      Text(
                        'Bus',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(10)),
                    ]),
                  ),
                ]),
          ),
          Padding(padding: EdgeInsets.all(3)),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  height: 180,
                  //width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('Assets/images/google-maps.png'),
                          fit: BoxFit.cover)),
                ),
                Text(
                  'Book From Map',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bike and Cars for Rent",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => rentalBike()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image:
                                    AssetImage('Assets/images/Rental_bike.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        'Rental Bikes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('Assets/images/Rental.png'),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        'Rental Cars',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ]),
        ],
      ),
    ));
  }
}

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        height: 180,
        width: double.infinity,
        //width: 400,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 172, 172, 176),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage('Assets/images/Yes.png'), fit: BoxFit.cover)),
      ),
      Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 2)),
          Text('RoadSaathi Services',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
      Padding(padding: EdgeInsets.all(2)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.only(left: 2, right: 2)),
          InkWell(
            //splashColor: Color.fromARGB(255, 172, 172, 176),
            onTap: () {},
            child: Container(
                height: 120,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 225, 228, 227)),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 8)),
                    Container(
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('Assets/images/Schedule.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      'Intercity Rides',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
          Padding(padding: EdgeInsets.all(2)),
          InkWell(
            onTap: () {},
            child: Container(
              height: 120,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 225, 228, 227)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 0)),
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('Assets/images/Sch.png'),
                      // fit: BoxFit.cover
                    )),
                  ),
                  Text(
                    'Reserve',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 2))
        ],
      ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 228, 227),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(children: [
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Image(
                        image: AssetImage(
                          'Assets/images/your-d-png.webp',
                        ),
                        height: 50,
                        width: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Your Driver',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                      height: 90,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 225, 228, 227),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(children: [
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Image(
                          image: AssetImage(
                            'Assets/images/Loading_v.png',
                          ),
                          height: 50,
                          width: 110,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            'Loading Vehicle',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        )
                      ])),
                ],
              ),
            ),
            InkWell(
                onTap: () {},
                child: Column(children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 228, 227),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Image(
                          image: AssetImage(
                            'Assets/images/Emergency.png',
                          ),
                          height: 50,
                          width: 110,
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Text(
                          'Assistent',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ]))
          ]))
    ])));
  }
}

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  File? selectedImage;
  String base64Image = "";

  Future<void> chooseImage(type) async {
    var image;
    if (type == "Camera") {
      image = await ImagePicker().pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          Stack(children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 187, 197, 194),
              radius: 60,
              child: ClipOval(
                child: selectedImage != null
                    ? Image.file(
                        selectedImage!,
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      )
                    : Image.asset(
                        'Assets/images/images_user.jpeg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: -10,
              child: IconButton(
                  splashColor: Colors.white,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 150,
                            width: double.infinity,
                            //color: Colors.purple,
                            child: Column(
                              children: [
                                Text(
                                  'Add a Image',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 25)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(children: [
                                      IconButton(
                                        onPressed: () {
                                          chooseImage("Camera");
                                        },
                                        icon: Icon(
                                          Icons.camera,
                                          size: 50,
                                          //semanticLabel: "Camera",
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      // Text('Camera',
                                      // style: TextStyle(fontSize: 20)),
                                    ]),
                                    IconButton(
                                        onPressed: () {
                                          chooseImage("Gallary");
                                        },
                                        icon: Icon(
                                          Icons.image,
                                          size: 50,
                                          // semanticLabel: "Gallary",
                                        )),
                                  ],
                                )
                              ],
                            ),
                          );
                        });
                  },
                  icon: Icon(Icons.add_a_photo)),
            )
          ]),
          Text(
            'Golu Saini',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.only(top: 2)),
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 225, 228, 227),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(Icons.star),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    '5.0',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                //splashColor: Colors.red,
                //borderRadius: BorderRadius.circular(15),
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 228, 227),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.gift,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Gift',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 228, 227),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.wallet,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Wallet',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 228, 227),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.book,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Activity',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            height: 5.0,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 225, 228, 227),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              width: double.infinity,
              //color: Colors.amber,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  FaIcon(FontAwesomeIcons.userTie),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    "Earn With RoadSathi",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              width: double.infinity,
              //color: Colors.amber,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  FaIcon(FontAwesomeIcons.solidMessage),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    "Messege",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              width: double.infinity,
              //color: Colors.amber,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  FaIcon(FontAwesomeIcons.trophy),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    "Rewards",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              width: double.infinity,
              //color: Colors.amber,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  FaIcon(FontAwesomeIcons.heartPulse),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    "Safety",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              width: double.infinity,
              //color: Colors.amber,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  FaIcon(FontAwesomeIcons.userGroup),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    "Help",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ]))));
  }
}
