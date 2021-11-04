import 'package:flutter/material.dart';

class Notification_1 extends StatefulWidget {
  const Notification_1({Key? key}) : super(key: key);

  @override
  _Notification_1State createState() => _Notification_1State();
}

class _Notification_1State extends State<Notification_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontFamily: 'Comfortaa', fontSize: 36),
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: <Widget>[
            Card(
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/accept_2');
                },
                child: const Text('Notification'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget contactNumber1() {
    return TextFormField();
  }
}
