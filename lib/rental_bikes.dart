import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class rentalBike extends StatefulWidget {
  const rentalBike({super.key});

  @override
  State<rentalBike> createState() => _rentalBikeState();
}

class _rentalBikeState extends State<rentalBike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rental Cars'),
        ),
        body: ListTile(
          leading: FaIcon(FontAwesomeIcons.user),
        ));
  }
}
