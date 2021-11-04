import 'package:flutter/material.dart';
import 'package:insurance_app/services/input_box.dart';

class CreateAccount1 extends StatefulWidget {
  const CreateAccount1({Key? key}) : super(key: key);

  @override
  _CreateAccount1State createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 75,),
          const Text('Create Account',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 36.0,
                color: Colors.black
            ),),
          InputBox(text: 'Employee Number', isObs: false),
          const SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/create_account_2');
              },
              child: const Text('Next',
              style: TextStyle(
                fontSize: 13.0,
                fontFamily: 'Roboto',
                color: Colors.white
              ),),
              color: Color.fromARGB(255, 11, 126, 193),
              height: 50.0,
              minWidth: 150.0,
            ),
          )
        ],

      ),

    );
  }
}
