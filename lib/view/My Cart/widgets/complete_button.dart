import 'package:flutter/material.dart';

import '../../../config/screen_size.dart';
import '../../../utils/Styles.dart';

class CompleteButton extends StatelessWidget {
  const CompleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      child: Container(
        width: ScreenSize.width(context)*0.6,
        height: ScreenSize.height(context)*0.07,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: const Center(
          child:  Text('Complete Payment',
            style: Styles.textStyle22,),
        ),
      ),
    );
  }
}
