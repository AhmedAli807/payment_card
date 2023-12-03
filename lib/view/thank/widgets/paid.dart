import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_card/config/screen_size.dart';

import '../../../utils/Styles.dart';

class Paid extends StatelessWidget {
  const Paid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom:ScreenSize.height(context)*0.08,
      right: 20+8,
      left: 20+8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(FontAwesomeIcons.barcode,
            size: ScreenSize.height(context)*0.1,),
          GestureDetector(
            onTap: (){},
            child: Container(
              width: 113,
              height: 58,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: ScreenSize.width(context)*0.003, color: const Color(0xFF34A853)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle24.copyWith(color: const Color(0xFF34A853))
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
