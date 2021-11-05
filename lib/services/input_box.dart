import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputBox extends StatefulWidget {
  final String text;
  final bool isObs ;

  InputBox({required this.text,  required this.isObs});

  @override
  _InputBoxState createState() => _InputBoxState(text, isObs);
}

class _InputBoxState extends State<InputBox> {
  final String text;
  final bool isObs;
  _InputBoxState(this.text, this.isObs);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text,
          style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 18.sp,
            fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 17.h,),
        SizedBox(
          height: 50.h,
          width: 300.w,
          child: TextField(
            obscureText: isObs,
              decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 196, 247, 251),
                  filled: true,
                  border: OutlineInputBorder()
              ),

          ),
        ),
      ],
    );
  }
}
