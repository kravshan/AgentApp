import 'package:flutter/material.dart';
import 'package:insurance_app/services/body_contact.dart';

class Contact extends StatefulWidget {
  //const Review({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact',
          style: TextStyle(fontFamily: 'Comfortaa', fontSize: 36),
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Body_contact(),
      backgroundColor: Colors.cyan[50],
    );
  }
}
