import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:synclifyinternship/color.dart';
import 'package:synclifyinternship/helper/helpercode.dart';
import 'package:synclifyinternship/week_1task/loginscreen.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmpasscontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: Container(
        padding: EdgeInsets.only(top: 70,left: 25,right: 25),
        child: Column(
          crossAxisAlignment: .start,
          children:
          [
            //BACK ICON 
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
            Center(child: Text("Create Account",style: TextStyle(fontSize: 33,fontWeight: .bold,),)),
            SizedBox(height: 10,),
            //SUBTITLE TEXT
            Center(
                child: Column(
                  children: [
                    Text("Create a new account to get started and enjoy",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),
                    Text("seamless access to our features",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),
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
                controller: namecontroller,
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
                controller: emailcontroller,
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
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: FaIcon(FontAwesomeIcons.envelope),
                  ),
                ),
              ),
            ),
            SizedBox(height: helper.height(context, 0.025),),
            //TEXT FIELD 3
            Container(
              width: helper.width(context, 1),
              decoration: BoxDecoration(
                  boxShadow: [helper.shadow(AppColors.grey.withOpacity(0.3))]
              ),
              child: TextField(
                controller: passwordcontroller,
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
            SizedBox(height: helper.height(context, 0.025),),
            //TEXT FIELD 4
            Container(
              width: helper.width(context, 1),
              decoration: BoxDecoration(
                  boxShadow: [helper.shadow(AppColors.grey.withOpacity(0.3))]
              ),
              child: TextField(
                controller: confirmpasscontroller,
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
                  label: Text("Confirm Password"),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 12),
                    child: FaIcon(FontAwesomeIcons.lockOpen),
                  ),

                ),
              ),
            ),

            SizedBox(height: 50,),
            //BTTN SECTION
            Container(
              height: 50,
              width: helper.width(context, 1),
              decoration: BoxDecoration(
                boxShadow: [helper.shadow(Colors.green)]
              ),
              child: ElevatedButton(
                  onPressed: ()async
                  {
                    var name=namecontroller.text;
                    var email=emailcontroller.text;
                    var pass=passwordcontroller.text.toString();
                    var confirmpass=confirmpasscontroller.text.toString();


                    if (name.isEmpty || email.isEmpty || pass.isEmpty || confirmpass.isEmpty) {
                      snackbarforfields.errorbar(context, "Enter all the required fields");

                    }

                    if (pass != confirmpass) {

                      snackbarforfields.errorbar(context, "Password do not match");
                      return;
                    }

                    var signupbox=await Hive.openBox('signupdata');

                    //making a list in hive to store multiple records to save records
                    signupbox.put(email, {
                      'name':name,
                      'email':email,
                      'password':pass,
                      'confirmpassword':confirmpass,
                    });

                    // signupbox.put('name', name);
                    // signupbox.put('email', email);
                    // signupbox.put('password', pass);
                    // signupbox.put('confirmpassword', confirmpass);
                    // print(signupbox.get('name'));
                    // print(signupbox.get('email'));
                    // print(signupbox.get('password'));
                    // print(signupbox.get('confirmpassword'));

                    namecontroller.clear();
                    emailcontroller.clear();
                    passwordcontroller.clear();
                    confirmpasscontroller.clear();

                    if(name.isNotEmpty & email.isNotEmpty & pass.isNotEmpty & confirmpass.isNotEmpty && pass==confirmpass  )
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                    }
                  },
                  child:Text("Craete Account",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: .bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade500,
                ),
              ),
            ),
            //SizedBox(height: 5,),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text("Already have an accout ?"),
                TextButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                  },
                  child:Text("Login",style: TextStyle(color: Colors.green,fontWeight: .bold,fontSize: 16),),
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
