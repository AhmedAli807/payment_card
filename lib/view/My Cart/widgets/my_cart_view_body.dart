import 'package:flutter/material.dart';
import 'package:payment_card/config/screen_size.dart';
import 'package:payment_card/view/My%20Cart/widgets/order_info.dart';
import 'package:payment_card/view/My%20Cart/widgets/total_price.dart';
import 'package:payment_card/view/Payment/payment_view.dart';
import 'package:payment_card/view/custom_button.dart';
import 'package:payment_card/view/my_app_bar.dart';

import '../../../utils/logo.dart';
import 'my_drawer.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: MyAppBar.myAppBar(context, title: 'My Cart'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: ScreenSize.height(context)*0.02,
              ),
              Center(child: Image.asset(Logo.item)),
              SizedBox(
                height: ScreenSize.height(context)*0.05,
              ),
             const OrderInfo(),
              SizedBox(
                height: ScreenSize.height(context)*0.02,
              ),
              const  MyDrawer(),
              SizedBox(
                height: ScreenSize.height(context)*0.02,
              ),
            const TotalPrice(),
              SizedBox(
                height: ScreenSize.height(context)*0.02,
              ),
               CustomButton(text: 'Complete payment', onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentView()));
               })
            ],
          ),
        ),
      ),
    ));
  }

}


