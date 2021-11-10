import 'package:flutter/material.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/services/profile.dart';

class Review_2 extends StatefulWidget {

  @override
  _Review_2State createState() => _Review_2State();
}

class _Review_2State extends State<Review_2> {

  final num = 80.w;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 85.h,),
          TopicAndButton(text: 'Case XXX'),
          SizedBox(height: 87.h,),
          Text('Summary',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 30.sp,
                fontFamily: 'Comfortaa'
            ),),
          SizedBox(height: 20.h,),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: num,),
              Text('Policy Number                  -',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
              Text('     xxxxxxxxxx',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: num,),
              Text('Vehicle Number                -',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
              Text('     xxxxxxxxxx',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: num,),
              Text('Chasis Number                 -',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
              Text('     xxxxxxxxxx',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: num,),
              Text('Mileage                              -',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
              Text('     xxxxxxxxxx',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: num,),
              Text('Driver Name                      -',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
              Text('     xxxxxxxxxx',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: num,),
              Text('Driver Licence Details     -',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
              Text('     xxxxxxxxxx',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: num,),
              Text('Nature of Accident          -',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
              Text('     xxxxxxxxxx',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    fontFamily: 'Comfortaa'
                ),),
            ],
          ),
          SizedBox(height: 250.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('BACK', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13.sp, fontFamily: 'Roboto', color: Colors.white),),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
          SizedBox(height: 36.h,),
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
        ],
      ),
    );
  }
}
