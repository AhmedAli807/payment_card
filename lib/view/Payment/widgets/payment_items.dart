import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_card/view/Payment/widgets/types_payment.dart';

import '../../../config/screen_size.dart';

class PaymentItems extends StatelessWidget {
  const PaymentItems({
    super.key,
    required this.activeIndex,
    required this.widget, required this.index,
  });

  final int activeIndex;
  final TypesPayment widget;
  final int index;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        width: ScreenSize.width(context) * 0.14,
        height: ScreenSize.height(context) * 0.08,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color: activeIndex == index
                    ? const Color(0xFF34A853)
                    : Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: activeIndex==index
                  ? const Color(0xFF34A853)
                  : Colors.white,
              blurRadius: 4,
              offset: const Offset(1, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
            child: SvgPicture.asset(
              widget.logo[index],
              height: ScreenSize.height(context) * 0.03,
              fit: BoxFit.scaleDown,
            )));
  }
}
