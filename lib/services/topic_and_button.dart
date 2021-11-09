import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class TopicAndButton extends StatefulWidget {
  final String text;

  TopicAndButton({required this.text});

  @override
  _TopicAndButtonState createState() => _TopicAndButtonState(text: text);
}

class _TopicAndButtonState extends State<TopicAndButton> {
  String text;
  _TopicAndButtonState({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //SizedBox(width: 115.w,),
        Padding(
          padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 36.sp,
            ),
          ),
        ),
        //SizedBox(width: 40.w,),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 20.w, 0),
          child: SizedBox(
            width: 54.w,
            height: 31.h,
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/notification_1');
              },
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
              child: Ink(
                width: 90.w,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color.fromARGB(255, 11, 126,193), Color.fromARGB(255, 0, 255, 255)]
                    ),
                    borderRadius: BorderRadius.circular(30.r)
                ),
                child: Container(
                  constraints: BoxConstraints(minWidth: 50.w, minHeight: 31.h),
                  alignment: Alignment.center,
                  child: const Text('1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
