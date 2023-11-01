import 'package:flutter/material.dart';
import 'package:payment_card/config/screen_size.dart';
import 'package:payment_card/view/Payment/widgets/payment_items.dart';

class TypesPayment extends StatefulWidget {
  const TypesPayment({super.key, required this.logo});

  final List<String> logo;


  @override
  State<TypesPayment> createState() => _TypesPaymentState();
}

class _TypesPaymentState extends State<TypesPayment> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height(context) * 0.1,
      child: Center(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.logo.length,
            itemBuilder: (context, index) => MaterialButton(
                  onPressed: () {
                    activeIndex = index;
                    setState(() {

                    });
                  },
                  child: PaymentItems(activeIndex: activeIndex, widget: widget,index: index,),
                )),
      ),
    );
  }
}

