import 'package:flutter/material.dart';
import 'package:insurance_app/pages/welcome.dart';

class LoginScrn extends StatefulWidget {
  const LoginScrn({Key? key}) : super(key: key);

  @override
  _LoginScrnState createState() => _LoginScrnState();
}

class _LoginScrnState extends State<LoginScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text('Log In',
        style: TextStyle(
          fontFamily: 'Comfortaa',
          fontSize: 30.0,
          color: Colors.black
        ),),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 239, 250, 252),
      ),
      backgroundColor: const Color.fromARGB(255, 239, 250, 252),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40.0,),
            const Text('User Name',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 20.0
            )),
            const Padding(
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()
                )
                ),
              ),
            const SizedBox(height: 30.0,),
            const Text('Password',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 20.0
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: TextField(
                obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder()
                  )
              ),
            ),
            const SizedBox(height: 30.0,),
            FlatButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false);
              },
              child: const Text('Log In',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              height: 45.0,
              minWidth: 200.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}
