import 'package:flutter/material.dart';
import 'package:note_app/constent.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLine = 1, required this.onSaved, this.onChanged,
  });

  final String hint;
  final int maxLine;
  final void Function(String?) onSaved ;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField
    (
      onChanged: onChanged ,
      onSaved: onSaved ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required' ;
        }else {
          return null ;
        }
      },
      cursorColor: kPrimaryColor,
      
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: kPrimaryColor,
            height: double.parse(maxLine.toString()),
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
