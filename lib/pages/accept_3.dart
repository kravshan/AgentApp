import 'package:flutter/material.dart';
import 'package:insurance_app/services/input_box.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/services/topic_and_button.dart';

class Accept3 extends StatefulWidget {
  const Accept3({Key? key}) : super(key: key);

  @override
  _Accept3State createState() => _Accept3State();
}

class _Accept3State extends State<Accept3> {

  late PickedFile imageFile;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 85.h),
            TopicAndButton(text: 'Case XXX'),
            SizedBox(height: 44.h,),
            InputBox(text: 'Vehicle Chassis Number', isObs: false),
            SizedBox(height: 19.h,),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: FlatButton(
                onPressed: (){
                  takePhoto(ImageSource.camera);
                },
                child: Text('CHASSIS NUMBER',
                  style: TextStyle(
                      fontFamily: 'Robot',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),),
                color: const Color.fromARGB(255, 11, 126, 193),
              ),
            ),
            SizedBox(height: 13.h,),
            Text('Insurance Card Image',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 18.sp
            ),),
            SizedBox(height: 8.h,),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: FlatButton(
                onPressed: (){
                  takePhoto(ImageSource.camera);
                },
                child: Text('INSURANCE CARD',
                  style: TextStyle(
                      fontFamily: 'Robot',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),),
                color: const Color.fromARGB(255, 11, 126, 193),
              ),
            ),
            SizedBox(height: 15.sp,),
            InputBox(text: 'Milage', isObs: false),
            SizedBox(height: 15.sp,),
            InputBox(text: 'Nature of Accident', isObs: false),
            SizedBox(height: 19.sp,),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: FlatButton(
                onPressed: (){
                },
                child: Text('UPLOAD IMAGES',
                  style: TextStyle(
                      fontFamily: 'Robot',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),),
                color: const Color.fromARGB(255, 11, 126, 193),
              ),
            ),
            SizedBox(height: 13.h,),
            SizedBox(
              height: 50.h,
              width: 300.w,
              child: FlatButton(
                onPressed: (){},
                child: Text('NEXT',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Roboto',
                      color: Colors.white
                  ),),
                color: const Color.fromARGB(255, 11, 126, 193),
              ),
            ),
            SizedBox(height: 13.h,),
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
                color: const Color.fromARGB(255, 11, 126, 193),
              ),
            ),
            SizedBox(height: 13.h,),
            SizedBox(
              height: 50.h,
              width: 300.w,
              child: FlatButton(
                onPressed: (){},
                child: Text('CONTACT REIGIONAL OFFICE',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Roboto',
                      color: Colors.white
                  ),),
                color: const Color.fromARGB(255, 11, 126, 193),
              ),
            )

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
