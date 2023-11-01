import 'package:flutter/material.dart';

import '../config/screen_size.dart';
import '../utils/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed}) : super(key: key);
final String text;
 final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: onPressed,
      child: Container(
        width: ScreenSize.width(context)*0.6,
        height: ScreenSize.height(context)*0.07,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child:  Center(
          child:  Text(text,
            style: Styles.textStyle22,),
        ),
      ),
    );
  }
}
