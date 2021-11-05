import 'package:flutter/material.dart';
import 'package:insurance_app/services/input_box.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insurance_app/services/topic_and_button.dart';

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
            TopicAndButton(text: 'Case XXX',),
            InputBox(text: 'Policy Number', isObs: false),
            InputBox(text: 'Vehicle Number', isObs: false),
            InputBox(text: 'Driver Name', isObs: false),
            InputBox(text: 'Driver Licence Details', isObs: false),
            const SizedBox(height: 8.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: (){
                    takePhoto(ImageSource.camera);
                  },
                  child: const Text('FRONT SIDE',
                  style: TextStyle(
                    fontFamily: 'Robot',
                    fontSize: 13.0,
                    color: Colors.white
                  ),),
                  color: const Color.fromARGB(255, 224, 22, 22),
                ),
                FlatButton(
                  onPressed: (){
                    takePhoto(ImageSource.camera);
                  },
                  child: const Text('REAR SIDE',
                    style: TextStyle(
                        fontFamily: 'Robot',
                        fontSize: 13.0,
                        color: Colors.white
                    ),),
                  color: const Color.fromARGB(255, 224, 22, 22),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 12, 10, 10),
              child: FlatButton(
                onPressed: (){

                },
                child: const Text('LOCATION',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: Colors.white
                  ),),
                color: Colors.black,
                height: 53.0,
                minWidth: 360.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/accept_3');
                },
                child: const Text('NEXT',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: Colors.white
                  ),),
                color: const Color.fromARGB(255, 224, 22, 22),
                height: 53.0,
                minWidth: 360.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed: (){

                },
                child: const Text('CONTACT REGIONAL OFFICE',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: Colors.white
                  ),),
                color: Colors.black,
                height: 53.0,
                minWidth: 360.0,
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
