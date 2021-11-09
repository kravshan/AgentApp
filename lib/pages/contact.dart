import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contact extends StatefulWidget {

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  final number1 = '+94772640972';
  final number2 = '+94772640972';
  final number3 = '+94772640972';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 85.sp,),
          Center(
            child: Text('Contact',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 36.sp,
              fontWeight: FontWeight.w400
            ),),
          ),
          SizedBox(height: 87.sp,),
          Text(
            'Branch name xxxx',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 30.sp,
              fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 41.sp),
          SizedBox(
            height: 50.h,
            width: 160.w,
            child: contactNumber(number1, 1)
          ),
          SizedBox(height: 45.h),
          SizedBox(height: 50.h, width: 160.w, child: contactNumber(number2, 2)),
          SizedBox(height: 45.h),
          SizedBox(height: 50.h, width: 160.w, child: contactNumber(number3, 3)),
          SizedBox(height: 276.h),
          SizedBox(height: 50.h, width: 155.w ,child: back()),
        ],
      ),
    );
  }

  Widget contactNumber(number, numm) {
    return FlatButton(
      onPressed: () {
        FlutterPhoneDirectCaller.callNumber(number);
      },
      child: Text('CONTACT NUMBER $numm',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 13.sp,
            fontWeight: FontWeight.w900,
            color: Colors.white
          )),
      color: const Color.fromRGBO(11, 126, 193, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
    );
  }

  Widget back() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child:
        Text('BACK', style: TextStyle(fontFamily: 'Roboto', fontSize: 13.sp, fontWeight: FontWeight.w900, color: Colors.white)),
        color: const Color.fromARGB(255, 160, 213, 244),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
      ),
    );
  }
}
