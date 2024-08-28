import 'package:flutter/cupertino.dart';

abstract class ScreenSize{
  static double height(BuildContext context)=>MediaQuery.of(context).size.height;
  static double width(BuildContext context)=>MediaQuery.of(context).size.height;
  static double widtho(BuildContext context)=>MediaQuery.of(context).size.height;
}
