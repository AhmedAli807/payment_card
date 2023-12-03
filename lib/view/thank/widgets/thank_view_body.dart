import 'package:flutter/material.dart';
import 'package:payment_card/config/screen_size.dart';
import 'package:payment_card/view/my_app_bar.dart';
import 'package:payment_card/view/thank/widgets/paid.dart';
import 'package:payment_card/view/thank/widgets/payment_data.dart';

import 'dash_board.dart';
import 'master_card.dart';

class ThankViewBody extends StatelessWidget {
  const ThankViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: MyAppBar.myAppBar(context,title: ''),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Stack(
                clipBehavior: Clip.none,
                children:[
                  Container(
                  height: ScreenSize.height(context)*0.9,
                  width: ScreenSize.width(context),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                    child:
                    const Padding(
                      padding:  EdgeInsets.all(16.0),
                      child: PaymentData(),
                    ),
                ),
                 Positioned(
                  bottom: ScreenSize.height(context)*0.2,
                   left: -20,
                   child:   const CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                 ),
                 Positioned(
                  bottom: ScreenSize.height(context)*0.2,
                  right: -20,
                   child:  const CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                 ),
                 Positioned(
                   top: -ScreenSize.height(context)*0.04,
                   left: ScreenSize.width(context)*0.232,
                   child: CircleAvatar(
                     radius: ScreenSize.height(context)*0.055,
                      backgroundColor:  const Color(0xFFD9D9D9),
                     child: Icon(Icons.check_circle,
                       color: Colors.green,
                       size: ScreenSize.height(context)*0.1,
                     ),
                    ),
                 ),
                 const DashBoard(),
                 const MasterCard(),
                 const Paid()
                ]
              ),
            )
          ],
        ),
      ),
    ));
  }
}




