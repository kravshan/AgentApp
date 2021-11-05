import 'package:flutter/material.dart';
import 'package:insurance_app/services/input_box.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccount1 extends StatefulWidget {

  @override
  _CreateAccount1State createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 98.h),
            Text('Create Account',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 36.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400
              ),),
            SizedBox(height: 48.h,),
            InputBox(text: 'Employee Number', isObs: false),
            SizedBox(height: 240.h,),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/create_account_2');
                },
                child: Text('Next',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: 'Roboto',
                  color: Colors.white
                ),),
                color: const Color.fromARGB(255, 11, 126, 193),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
              ),
            )
          ],

        ),
      ),

    );
  }
}
