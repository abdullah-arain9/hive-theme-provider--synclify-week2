import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:synclifyinternship/color.dart';
import 'package:synclifyinternship/week_1task/loginscreen.dart';

import '../helper/helpercode.dart';

class forotpassword extends StatelessWidget {
  const forotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 70,left: 25,right: 25),
        color: AppColors.offWhite,
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [helper.shadow(AppColors.grey)],
              ),
              child: IconButton(
                onPressed: (){},
                icon:FaIcon(FontAwesomeIcons.caretLeft,size: 30,),
              ),
            ),
            SizedBox(height: helper.height(context, 0.03),),
            Center(child: Text("Forgot Password",style: TextStyle(fontSize: 30,fontWeight: .bold,),)),
            SizedBox(height: 10,),
            //SUBTITLE TEXT
            Center(
              child: Column(
                children: [
                  Text("Enter your email to receive a reset link and ",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),
                  Text("regain access to your account",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),
                ],
              ),
            ),
            SizedBox(height: helper.height(context, 0.04),),

            //TEXT FIELD 1
            Container(
              width: helper.width(context, 1),
              decoration: BoxDecoration(
                  boxShadow: [helper.shadow(AppColors.grey.withOpacity(0.3))]
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )
                  ),
                  border:.none,
                  label: Text("Email Address"),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 15,right: 20),
                    child: FaIcon(FontAwesomeIcons.envelope),
                  ),

                ),
              ),
            ),
            SizedBox(height: 30,),

            //BTTN SECTION
            Container(
              height: 50,
              width: helper.width(context, 1),
              decoration: BoxDecoration(
                  boxShadow: [helper.shadow(Colors.green)]
              ),
              child: ElevatedButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>login(),));
                },
                child:Text("Reset Password",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: .bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
