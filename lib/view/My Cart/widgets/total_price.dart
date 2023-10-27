import 'package:flutter/material.dart';

import '../../../utils/Styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Total',
        style: Styles.textStyle24,),
        Text('\$50.97',
        style: Styles.textStyle24,),
      ],
    );
  }
}
