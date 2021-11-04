import 'package:flutter/material.dart';
import 'profile_pic.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //SizedBox(height: 10),
      children: [
        SizedBox(
          height: 40,
          child: Text(
            'User Name',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 18,
            ),
          ),
        ),
        ProfilePic(),
        SizedBox(height: 30),
        Profile(
          text: 'REVIEW',
          press: () async {
            dynamic result =
                await Navigator.popAndPushNamed(context, '/review');
          },
        ),
        Profile(
          text: 'CONTACT REGIONAL OFFICE',
          press: () async {
            dynamic result =
                await Navigator.popAndPushNamed(context, '/contact');
          },
        ),
        Profile(
          text: 'SIGN OUT',
          press: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.black,
        onPressed: press,
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: new TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  color: Colors.white,
                  //textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
