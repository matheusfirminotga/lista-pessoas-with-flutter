import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController _controller;
  final String _labelText;

  const TextInput(this._controller, this._labelText);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: _labelText,
        labelStyle: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (String? text) {
        if (text!.isEmpty || text.length < 3) {
          return 'Preencha Corretamente';
        } else if (text.length > 40) {
          return 'Texto Muito Grande';
        } else {
          return null;
        }
      },
    );
  }
}
