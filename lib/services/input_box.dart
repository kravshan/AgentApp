import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final String text;
  final bool isObs;

  InputBox({required this.text, required this.isObs});

  @override
  _InputBoxState createState() => _InputBoxState(text, isObs);
}

class _InputBoxState extends State<InputBox> {
  final String text;
  final bool isObs;
  _InputBoxState(this.text, this.isObs);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 8.0, 8.0, 8.0),
          child: Text(text,
            style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 18.0
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: TextField(
            obscureText: isObs,
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()
              ),

          ),
        ),
      ],
    );
  }
}
