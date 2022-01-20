import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  String label;
  String hint;
  bool password;
  TextEditingController? controller;
  FormFieldValidator<String>? validator;
  TextInputType? KeyboardType;
  TextInputAction? textInputAction;
  FocusNode? focusNode;
  FocusNode? nextFocus;

  TextForm(
    this.label,
    this.hint, {
    this.password = false,
    this.controller,
    this.validator,
    this.KeyboardType,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller!,
      obscureText: password,
      validator: validator,
      keyboardType: KeyboardType,
      keyboardAppearance: Brightness.dark,
      textInputAction: textInputAction,
      focusNode: focusNode,
      style: TextStyle(
        color: Colors.purple,
        fontSize: 24,
      ),
      decoration: InputDecoration(

        label: Text(label),
        labelStyle: TextStyle(
          fontSize: 25,
          color: Colors.white60,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white60),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 22,
          color: Colors.white30,
        ),
      ),
    );
  }
}
