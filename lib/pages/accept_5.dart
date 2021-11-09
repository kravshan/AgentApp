import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accept5 extends StatefulWidget {
  const Accept5({Key? key}) : super(key: key);

  @override
  _Accept5State createState() => _Accept5State();
}

class _Accept5State extends State<Accept5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 85.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
          ),
          SizedBox(height: 221.h,),
          Text('Case XXX Confirmed',style: TextStyle(fontFamily: 'Comfortaa', fontSize: 30.sp, fontWeight: FontWeight.w400),),
          SizedBox(height: 30.h,),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cilent Contact Number     -',
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
              Text('Agent Contact Number     -',
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
          SizedBox(height: 145.h,),
          SizedBox(
            height: 50.h,
            width: 150.w,
            child: FlatButton(
                onPressed: (){
                  Navigator.popAndPushNamed(context, '/review');
                },
                child: Text('Review', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13.sp, fontFamily: 'Roboto', color: Colors.white),),
            color: const Color.fromARGB(255, 11, 126, 193),
            ),
          )
        ],
      ),
    );
  }
}
