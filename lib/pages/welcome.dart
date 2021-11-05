import 'package:flutter/material.dart';
import 'package:insurance_app/services/body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome_screen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
      // backgroundColor: const Color.fromARGB(255, 239, 250, 252),
    );
  }
}
