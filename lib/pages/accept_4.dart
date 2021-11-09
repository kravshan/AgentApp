import 'package:flutter/material.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accept4 extends StatefulWidget {
  const Accept4({Key? key}) : super(key: key);

  @override
  _Accept4State createState() => _Accept4State();
}

class _Accept4State extends State<Accept4> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Policy Number     -',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Vehicle Number     -',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Chasis Number     -',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Mileage     -',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Driver Name     -',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nature of Accident     -',
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
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Reference Number     -',
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
          SizedBox(height: 98.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/accept_5', (route) => false);
              },
              child: Text('CONFIRM',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    color: Colors.white
                ),),
              color: const Color.fromARGB(255, 11, 126, 193),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
          SizedBox(height: 54.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('BACK',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    color: Colors.white
                ),),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
          SizedBox(height: 54.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('CONTACT REIGIONAL OFFICE',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    color: Colors.white
                ),),
              color: const Color.fromARGB(255, 11, 126, 193),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          )
        ],
      ),
    );
  }
}
