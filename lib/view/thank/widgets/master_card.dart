import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_card/config/screen_size.dart';

import '../../../utils/logo.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom:ScreenSize.height(context)*0.2+40,
      right: 20+8,
      left: 20+8,
      child: Container(
        width: ScreenSize.width(context)*0.2,
        height:ScreenSize.height(context)*0.09,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: ScreenSize.width(context)*0.02,
            ),
            SvgPicture.asset(Logo.masterCard),
            SizedBox(
              width: ScreenSize.width(context)*0.02,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child:Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Credit Card ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Mastercard **78',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
