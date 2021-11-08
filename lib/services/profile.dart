import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
      color: const Color.fromARGB(255, 11, 126, 193),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 13.sp,
            color: Colors.white,
            fontWeight: FontWeight.w900
        ),
      ),
    );
  }
}