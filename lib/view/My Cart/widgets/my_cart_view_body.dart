import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_card/config/screen_size.dart';
import 'package:payment_card/utils/styles.dart';
import 'package:payment_card/view/My%20Cart/widgets/order_info.dart';
import 'package:payment_card/view/My%20Cart/widgets/total_price.dart';

import 'complete_button.dart';
import 'my_drawer.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Center(child: SvgPicture.asset('assets/images/Arrow.svg',height: 24,),
        ),
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: Styles.textStyle25
        ),
        centerTitle: true
        ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: ScreenSize.height(context)*0.02,
              ),
              Center(child: Image.asset('assets/images/item.png')),
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
             const  CompleteButton()
            ],
          ),
        ),
      ),
    ));
  }
}


