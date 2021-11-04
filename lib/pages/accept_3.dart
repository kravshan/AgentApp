import 'package:flutter/material.dart';
import 'package:insurance_app/services/input_box.dart';
import 'package:image_picker/image_picker.dart';

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
      backgroundColor: const Color.fromARGB(255, 239, 250, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 250, 252),
        elevation: 0.0,
        foregroundColor: Colors.black,
        title: const Text('Case xxx',
          style: TextStyle(
            fontSize: 36.0,
            fontFamily: 'Comfortaa',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 12.0, 8.0),
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/notification_1');
              },
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Ink(
                width: 90,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color.fromARGB(255, 255, 0, 214), Color.fromARGB(255, 255, 77, 0)]
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 50.0, minHeight: 31.0),
                  alignment: Alignment.center,
                  child: const Text('1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.0,),
            InputBox(text: 'Vehicle Chassis Number', isObs: false),
            const SizedBox(height: 8.0,),
            FlatButton(
              onPressed: (){
                takePhoto(ImageSource.camera);
              },
              height: 40.0,
              child: const Text('CAPTURE CHASSIS NUMBER',
                style: TextStyle(
                    fontFamily: 'Robot',
                    fontSize: 15.0,
                    color: Colors.white
                ),),
              color: const Color.fromARGB(255, 224, 22, 22),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 172.0, 0.0),
              child: Text('Licence Card Image',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 18.0
              ),),
            ),
            const SizedBox(height: 8.0,),
            FlatButton(
              onPressed: (){
                takePhoto(ImageSource.camera);
              },
              height: 40,
              child: const Text('CAPTURE LICENSE CARD',
                style: TextStyle(
                    fontFamily: 'Robot',
                    fontSize: 15.0,
                    color: Colors.white
                ),),
              color: const Color.fromARGB(255, 224, 22, 22),
            ),
            const SizedBox(height: 16.0,),
            InputBox(text: 'Milage', isObs: false),
            InputBox(text: 'Nature of Accident', isObs: false),

            FlatButton(
              onPressed: (){
              },
              height: 40,
              child: const Text('UPLOAD IMAGES',
                style: TextStyle(
                    fontFamily: 'Robot',
                    fontSize: 15.0,
                    color: Colors.white
                ),),
              color: const Color.fromARGB(255, 224, 22, 22),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed: (){

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
