import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 261.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 0.h),
            child: Center(
              child: SizedBox(
                height: 360.h,
                width: 410.w,
                child: const Image(
                  image: AssetImage('assets/car-2_1.jpg'),
                ),
              ),
            ),
          ),
          SizedBox(height: 212.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150.w,
                height: 50.h,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_scrn');
                  },
                  child: Text('LOG IN',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                    side: BorderSide(width: 2.w)
                  ),
                ),
              ),
              SizedBox(
                width: 150.w,
                height: 50.h,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/create_account_1');
                  },
                  child: Text('SIGN IN',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                  ),),
                  color: const Color.fromARGB(255, 11, 126, 193),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
