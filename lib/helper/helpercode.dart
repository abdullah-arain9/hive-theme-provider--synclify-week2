import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return MediaQuery.of(context).size.width*widthh;
  }

}



//snack bar for error showing
class snackbarforfields
{
  static errorbar(BuildContext context,String text)
  {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Row(
        children: [
          FaIcon(FontAwesomeIcons.circleExclamation,color: Colors.white,),
          SizedBox(width: 15,),
          Text(text,style: TextStyle(color: Colors.white,fontWeight: .w500),)
        ],
      ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
        backgroundColor: Colors.red.shade400,
        //animation: Duration(2s),
        behavior: .floating,
        duration: Duration(seconds: 3),
        //margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        //padding: EdgeInsets.only(top: 3),

      )
    );
  }
}
