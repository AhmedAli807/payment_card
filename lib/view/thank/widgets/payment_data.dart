import 'package:flutter/material.dart';
import 'package:payment_card/config/screen_size.dart';
import 'package:payment_card/utils/Styles.dart';

class PaymentData extends StatelessWidget {
  const PaymentData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ScreenSize.height(context)*0.1,
        ),
        const Text('Thank you!',
          style: Styles.textStyle25,),
        Text('Your transaction was successful!',
          style: Styles.textStyle20,),
        SizedBox(
          height: ScreenSize.height(context)*0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const  Text('Date',
              style: Styles.textStyle18,
            ),
            Text('01/24/2023',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: ScreenSize.height(context)*0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const  Text('Time',
              style: Styles.textStyle18,
            ),
            Text('10:15 AM',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: ScreenSize.height(context)*0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const  Text('To',
              style: Styles.textStyle18,
            ),
            Text('Sam Louis',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
            ),

          ],
        ),
        SizedBox(
          height: ScreenSize.height(context)*0.04,
        ),
        Container(
          height:ScreenSize.height(context)*0.002 ,
          width:double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15)
          ),
        ),
        SizedBox(
          height: ScreenSize.height(context)*0.04,
        ),
       const  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total',style: Styles.textStyle24,),
            Text('\$50.97',style: Styles.textStyle24,),

          ],
        )

      ],
    );
  }
}
