import 'package:flutter/material.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/services/profile.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 85.h,),
          TopicAndButton(text: 'Review'),
          SizedBox(height: 35.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.h,
                width: 100.w,
                color: const Color.fromARGB(255, 11, 126, 193),
                child: Center(child: Text('Case ID', style: TextStyle(fontFamily: 'Roboto', fontSize: 14.sp, fontWeight: FontWeight.w400),)),
              ),
              SizedBox(width: 20.w,),
              Container(
                height: 50.h,
                width: 100.w,
                color: const Color.fromARGB(255, 11, 126, 193),
                child: Center(child: Text('Status', style: TextStyle(fontFamily: 'Roboto', fontSize: 14.sp, fontWeight: FontWeight.w400),)),
              ),
              SizedBox(width: 20.w,),
              Container(
                height: 50.h,
                width: 100.w,
                color: const Color.fromARGB(255, 11, 126, 193),
                child: Center(child: Text('Contact Client', style: TextStyle(fontFamily: 'Roboto', fontSize: 14.sp, fontWeight: FontWeight.w400),)),
              )
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.h,
                width: 100.w,
                color: const Color.fromARGB(255, 160, 213, 244),
                child: Center(child: FlatButton(
                  onPressed: (){Navigator.pushNamed(context, '/review_2');},
                  child: Text('XXX', style: TextStyle(fontFamily: 'Roboto', fontSize: 14.sp, fontWeight: FontWeight.w400),))),
              ),
              SizedBox(width: 20.w,),
              Container(
                height: 50.h,
                width: 100.w,
                color: const Color.fromARGB(255, 160, 213, 244),
                child: Center(child: Text('***', style: TextStyle(fontFamily: 'Roboto', fontSize: 14.sp, fontWeight: FontWeight.w400),)),
              ),
              SizedBox(width: 20.w,),
              Container(
                height: 50.h,
                width: 100.w,
                color: const Color.fromARGB(255, 160, 213, 244),
                child: Center(child: Text('xxx', style: TextStyle(fontFamily: 'Roboto', fontSize: 14.sp, fontWeight: FontWeight.w400),)),
              )
            ],
          ),
          SizedBox(height: 450.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/welcome');
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
