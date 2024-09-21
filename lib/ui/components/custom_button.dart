import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.buttonText,required this.onButtonClickedCallBack});
  Function onButtonClickedCallBack;
  String buttonText;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      onButtonClickedCallBack();
    }, child: Text(buttonText));
  }
}
