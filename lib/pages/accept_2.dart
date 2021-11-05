import 'package:flutter/material.dart';
import 'package:insurance_app/services/input_box.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accept2 extends StatefulWidget {
  const Accept2({Key? key}) : super(key: key);

  @override
  _Accept2State createState() => _Accept2State();
}

class _Accept2State extends State<Accept2> {

  late PickedFile imageFile;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 85.h,),
            TopicAndButton(text: 'Case XXX',),
            SizedBox(height: 44.h,),
            InputBox(text: 'Policy Number', isObs: false),
            SizedBox(height: 17.h,),
            InputBox(text: 'Vehicle Number', isObs: false),
            SizedBox(height: 17.h,),
            InputBox(text: 'Driver Name', isObs: false),
            SizedBox(height: 17.h,),
            InputBox(text: 'Driver Licence Details', isObs: false),
            SizedBox(height: 35.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50.h,
                  width: 150.w,
                  child: FlatButton(
                    onPressed: (){
                      takePhoto(ImageSource.camera);
                    },
                    child: Text('FRONT SIDE',
                    style: TextStyle(
                      fontFamily: 'Robot',
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                    ),),
                    color: const Color.fromARGB(255, 11, 126, 193),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  width: 150.w,
                  child: FlatButton(
                    onPressed: (){
                      takePhoto(ImageSource.camera);
                    },
                    child: Text('REAR SIDE',
                      style: TextStyle(
                          fontFamily: 'Robot',
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                      ),),
                    color: const Color.fromARGB(255, 11, 126, 193),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.h),
            SizedBox(
              height: 50.h,
              width: 300.w,
              child: FlatButton(
                onPressed: (){

                },
                child: Text('LOCATION',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                  ),),
                color: const Color.fromARGB(255, 11, 126, 193),
              ),
            ),
            SizedBox(height: 11.h),
            SizedBox(
              height: 50.h,
              width: 300.w,
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/accept_3');
                },
                child: Text('NEXT',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                  ),),
                color: const Color.fromARGB(255, 160, 213, 244),
              ),
            ),
            SizedBox(height: 11.h),
            SizedBox(
              height: 50.h,
              width: 300.w,
              child: FlatButton(
                onPressed: (){

                },
                child: Text('CONTACT REGIONAL OFFICE',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                  ),),
                color: Color.fromARGB(255, 11, 126, 193),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(
        source: source
    );
    setState(() {
      imageFile = pickedFile!;
    });
  }
}
