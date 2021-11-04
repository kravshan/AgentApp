import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height
      ),
      designSize: Size(428, 926),
      orientation: Orientation.portrait
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 261.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 0),
              child: const Center(
                child: Image(
                  image: AssetImage('assets/car-2_1.jpg'),
                ),
              ),
            ),
            SizedBox(height: 212.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/login_scrn');
                  },
                  child: Center(
                    child: Text('LOG IN',
                    style: TextStyle(
                      fontFamily: 'Roberto',
                      fontSize: 13.sp,
                      color: Colors.black
                    ),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                    maximumSize: Size(150.w, 45.h),
                    side: BorderSide(
                      width: 2.w
                    )

                  )
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create_account_1');
                  },
                  child: Text('REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                      fontSize: 13.sp
                  ),
                  ),
                  color: Color.fromARGB(255, 11, 126, 193),
                  height: 45,
                  minWidth: 150,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
