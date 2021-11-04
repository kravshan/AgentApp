import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Review',
          style: TextStyle(fontFamily: 'Comfortaa', fontSize: 36),
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/welcome');
          },
          child: Text('BACK'),
          color: Colors.red,
        ),
      ),
    );
  }
}
