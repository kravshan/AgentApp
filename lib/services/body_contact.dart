import 'package:flutter/material.dart';

class Body_contact extends StatefulWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  State<Body_contact> createState() => _Body_contactState();
}

class _Body_contactState extends State<Body_contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: ()  {
            Navigator.popAndPushNamed(context, '/welcome');
          },
          child: Text('BACK'),
          color: Colors.red,
        ),
      ),
    );
  }
}
