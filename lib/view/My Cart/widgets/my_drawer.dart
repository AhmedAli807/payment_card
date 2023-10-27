import 'package:flutter/material.dart';
import 'package:payment_card/config/screen_size.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width(context)*0.5,
      decoration:  ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: ScreenSize.width(context)*0.001,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: const Color(0xFFC6C6C6),
          ),
        ),
      ),
    );
  }
}
