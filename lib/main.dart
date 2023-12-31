import 'package:flutter/material.dart';
import 'package:payment_card/view/My%20Cart/my_cart_view.dart';
import 'package:payment_card/view/Payment/payment_view.dart';
import 'package:payment_card/view/thank/thank_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThankView(),
    );
  }
}


