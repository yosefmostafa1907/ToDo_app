import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class CustomTextFormField extends StatelessWidget {
  String labelText;
  TextInputType keyboardType;
  bool isObscureText;
  Validator? validator;
  int? maxLines;
  TextEditingController? controller;
  CustomTextFormField({required this.labelText, this.keyboardType=TextInputType.text,
    this.isObscureText=false,this.validator,this.controller,this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        obscureText:isObscureText,
        keyboardType: keyboardType,
        validator:validator ,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText:labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22)
          ),


        ),
      ),
    );
  }
}
