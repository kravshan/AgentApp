import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/services/input_box.dart';

class LoginScrn extends StatefulWidget {

  @override
  _LoginScrnState createState() => _LoginScrnState();
}

class _LoginScrnState extends State<LoginScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 98.h,),
            Text('SIGN IN',
              style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
            SizedBox(height: 56.h,),
            InputBox(text: 'User Name', isObs: false,),
            SizedBox(height: 35.h,),
            InputBox(text: 'Password', isObs: true,),
            SizedBox(height: 52.h,),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false);
                },
                child: Text('LOGIN',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 13.sp
                  ),
                ),
                color: const Color.fromARGB(255, 11, 126, 193),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
              ),
            ),
            SizedBox(height: 34.h,),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: FlatButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Text('BACK',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900
                  ),
                ),
                color: const Color.fromARGB(255, 160, 213, 244),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
