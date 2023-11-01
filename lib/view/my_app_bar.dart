import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/Styles.dart';

class MyAppBar{
  static AppBar myAppBar(BuildContext context,{required String title}) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: MaterialButton(
        onPressed: ()=>Navigator.pop(context),
        child: Center(child: SvgPicture.asset('assets/images/Arrow.svg',height: 24,),
        ),
      ),
      title:  Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.textStyle25
      ),
      centerTitle: true
      ,
    );
  }

}