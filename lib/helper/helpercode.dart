import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class helper
{

  static BoxShadow shadow(Color colorsss)
  {
    return BoxShadow(
      color: colorsss.withOpacity(0.3),
      offset: Offset(0, 5),
      blurRadius: 13,
      spreadRadius: 3,
    );
  }

  static double height( BuildContext context,double heightttt){
    return MediaQuery.of(context).size.height*heightttt;
  }

  static double width(BuildContext context, double widthh){
    return MediaQuery.of(context).size.height*widthh;
  }

}
