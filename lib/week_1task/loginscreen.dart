import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:synclifyinternship/color.dart';
import 'package:synclifyinternship/week_1task/homepage.dart';
import 'package:synclifyinternship/week_1task/signupscreen.dart';

import '../helper/helpercode.dart';
import 'forgotpass.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: Container(
        padding: EdgeInsets.only(top: 70,left: 25,right: 25),
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
            Center(child: Text("Log In",style: TextStyle(fontSize: 33,fontWeight: .bold,),)),
            SizedBox(height: 10,),
            //SUBTITLE TEXT
            Center(
              child: Column(
                children: [
                  Text("Enter your email and password to securely access",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),
                  Text("your account and manage your services",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),
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
                  label: Text("Name"),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: FaIcon(FontAwesomeIcons.userInjured),
                  ),

                ),
              ),
            ),
            SizedBox(height: helper.height(context, 0.025),),
            //TEXT FIELD 2
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
                  label: Text("Password"),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 12),
                    child: FaIcon(FontAwesomeIcons.lock),
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
               Row(
                 children: [
                   Checkbox(
                     value: isChecked,

                     onChanged: (value) {
                       setState(() {
                         isChecked = value!;
                       });
                     },
                     activeColor: Colors.green,
                     checkColor: Colors.white,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(4),
                     ),
                     side: BorderSide(
                         width: 2,
                         color: Colors.black.withOpacity(0.4)
                     ),
                   ),
                   Text("Remember me",style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                 ],
               ),
                TextButton(onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => forotpassword(),));
                }, child: Text("Forgot Password",style: TextStyle(color: Colors.red),))

              ],
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
                },
                child:Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: .bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text("Don't have an accout ?"),
                TextButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signuppage(),));
                  },
                  child:Text("Sign Up",style: TextStyle(color: Colors.green,fontWeight: .bold,fontSize: 16),),
                )

              ],
            ),
            SizedBox(height:10,),
            Divider(),
            SizedBox(height:10,),
            Center(child: Text("Or Continue With Account")),
            SizedBox(height: 30,),
            Row(
              spacing: 10,
              mainAxisAlignment: .center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [helper.shadow(AppColors.grey)]

                    ),
                    child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.facebookF,color: Colors.black,))),
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [helper.shadow(AppColors.grey)]

                    ),
                    child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.google,color: Colors.black,))),
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [helper.shadow(AppColors.grey)]

                    ),
                    child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.apple,color: Colors.black,))),
              ],
            )

          ],
        ),
      ),
    );
  }
}
