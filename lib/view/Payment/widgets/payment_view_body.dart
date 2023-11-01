import 'package:flutter/material.dart';
import 'package:payment_card/config/screen_size.dart';
import 'package:payment_card/view/custom_button.dart';
import 'package:payment_card/view/Payment/widgets/types_payment.dart';
import 'package:payment_card/view/my_app_bar.dart';

import '../../../utils/logo.dart';
import 'credit_card_item.dart';

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({Key? key}) : super(key: key);

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    List<String> logo = [Logo.card, Logo.payPal, Logo.applePay];
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar.myAppBar(title: 'Payment Details', context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [

            SliverToBoxAdapter(child: TypesPayment(logo: logo)),
             SliverToBoxAdapter(child: CreditCardItem(formKey: formKey,autovalidateMode:autovalidateMode ,)),
            SliverFillRemaining(
              hasScrollBody: false,
                child:
            Align(
              alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:  const EdgeInsets.all(16.0),
                  child:  CustomButton(text: 'Pay', onPressed:(){
                    if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                    }
                    else{
                      autovalidateMode=AutovalidateMode.always;
                      setState(() {

                      });
                    }
                  } ),
                ))),
          ]
        ),
      ),
    ));
  }
}

