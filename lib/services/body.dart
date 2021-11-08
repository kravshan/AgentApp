import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'profile_pic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/services/profile.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 85.h,),
          TopicAndButton(text: 'Welcome'),
          SizedBox(height: 40.h,),
          Text(
            'User Name',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 18.sp,
              fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 27.h,),
          ProfilePic(),
          SizedBox(height: 37.h),
          SizedBox(
            height: 50.h,
            width: 150.w,
            child: Profile(
              text: 'REVIEW',
              press: () {
                    Navigator.popAndPushNamed(context, '/review');
              },
            ),
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: Profile(
              text: 'CONTACT REGIONAL OFFICE',
              press: () {
                    Navigator.pushNamed(context, '/contact');
              },
            ),
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            height: 50.h,
            width: 150.w,
            child: FlatButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('SIGN OUT',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                ),),
              color: Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
        ],
      ),
    );
  }
}

