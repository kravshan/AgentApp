import 'package:flutter/material.dart';
import 'package:insurance_app/services/body.dart';

class Welcome_screen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 250, 252),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 239, 250, 252),
          title: Text(
            'Welcome',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 36,
            ),
          ),
          elevation: 0,
          foregroundColor: Colors.black,
          //ackgroundColor: Colors.lightBlue[50],
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 12.0, 8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/notification_1');
                },
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  width: 90,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color.fromARGB(255, 255, 0, 214), Color.fromARGB(255, 255, 77, 0)]
                      ),
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Container(
                    constraints: const BoxConstraints(minWidth: 50.0, minHeight: 31.0),
                    alignment: Alignment.center,
                    child: const Text('1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Body(),
        // backgroundColor: const Color.fromARGB(255, 239, 250, 252),
      ),
    );
  }
}
