import 'package:flutter/material.dart';
import 'package:insurance_app/services/input_box.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccount2 extends StatefulWidget {
  const CreateAccount2({Key? key}) : super(key: key);

  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 98.h,),
            Text('Create Account',
              style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 36.sp,
            ),),
            SizedBox(height: 40.h,),
            InputBox(text: 'User Name', isObs: false),
            SizedBox(height: 16.h,),
            InputBox(text: 'Email', isObs: false,),
            SizedBox(height: 16.h,),
            InputBox(text: 'Password', isObs: true),
            SizedBox(height: 45.h,),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false);
                },
                child: const Text('Next',
                  style: TextStyle(
                      fontSize: 13.0,
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
