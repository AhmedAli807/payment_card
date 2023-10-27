import 'package:flutter/material.dart';
import 'package:payment_card/config/screen_size.dart';
import 'package:payment_card/utils/Styles.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:  [
       const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
             Text(
              'Order Subtotal',
              textAlign: TextAlign.center,
              style: Styles.textStyle18
            ),
            Text(
              '\$42.97',
              textAlign: TextAlign.center,
              style: Styles.textStyle18
            )
          ],
        ),
        SizedBox(
          height: ScreenSize.height(context)*0.02,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(
                'Discount',
                textAlign: TextAlign.center,
                style: Styles.textStyle18
            ),
            Text(
                '\$0',
                textAlign: TextAlign.center,
                style: Styles.textStyle18
            )
          ],
        ),
        SizedBox(
          height: ScreenSize.height(context)*0.02,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(
                'Shipping',
                textAlign: TextAlign.center,
                style: Styles.textStyle18
            ),
            Text(
                '\$8',
                textAlign: TextAlign.center,
                style: Styles.textStyle18
            )
          ],
        ),
      ],
    );
  }
}
