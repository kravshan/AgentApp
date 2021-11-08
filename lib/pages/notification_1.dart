import 'package:flutter/material.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notification_1 extends StatefulWidget {
  const Notification_1({Key? key}) : super(key: key);

  @override
  _Notification_1State createState() => _Notification_1State();
}

class _Notification_1State extends State<Notification_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 85.h,),
          TopicAndButton(text: 'Notification'),
          SizedBox(height: 36.h,),
          SizedBox(
            height: 94.h,
            width: 359.w,
            child: Card(
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/notification_2');
                },
                child: const Text('Notification'),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
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
        ],
      ),
    );
  }

  Widget contactNumber1() {
    return TextFormField();
  }
}
