import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../color.dart';
import '../helper/helpercode.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  bool isselectcontainer0= false;
  bool isselectcontainer1= false;
  bool isselectcontainer2= false;
  bool isselectcontainer3= false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body:Column(
        //mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          //APP BAR SECTION
          Container(
            child: Stack(
              clipBehavior: Clip.none,

              children: [
                //APP BAR DESIGN SECTION
                Container(
                  padding: EdgeInsets.only(top:55,right: 10),
                  height: helper.height(context, 0.27),
                  width:helper.width(context, 1),
                  decoration: BoxDecoration(
                      color: AppColors.darkNavy,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50)
                      )
                  ),
                  child: Column(
                    children: [
                      //NAME AND TITILE OF SHOP
                      ListTile(
                        // leading: Container(
                        //   decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       border: Border.all(
                        //           width: 4,
                        //           color: Colors.white
                        //       )
                        //   ),
                        //   child: CircleAvatar(
                        //     radius: 30,
                        //     backgroundImage:  AssetImage("assets/images/user.png"),
                        //   ),
                        // ),
                        title: Text("Welcome",style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 16), ),
                        subtitle: Text("Synclify Solutions",style: GoogleFonts.ptSans(color: Colors.white,fontWeight: .w700,fontSize: 22),),
                        trailing: Container(
                            width: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.white.withOpacity(0.3) ,
                                  spreadRadius: 3,
                                  blurRadius: 13,
                                  offset: Offset(0,5),
                                )
                              ],
                              shape: BoxShape.circle,
                              color: Colors.white,

                            ),
                            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.bell,color: Colors.black,size: 22,fontWeight: .w400,))),
                      ),
                      SizedBox(height: helper.height(context, 0.02),),
                      Padding(
                        padding: EdgeInsets.only(left: 30,right: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          width: helper.width(context, 0.5),
                          height: helper.height(context, 0.05),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.offWhite.withOpacity(0.3),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow:[helper.shadow(Colors.white)]
                          ),
                          child: Row(
                            spacing: 15,
                            children: [
                              FaIcon(FontAwesomeIcons.search),
                              Container(
                                  width: helper.width(context, 0.2),
                                  height: helper.height(context, 0.05),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: .none,
                                        enabledBorder: .none,
                                        border: InputBorder.none,
                                        hintText: "Search..."
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: helper.height(context, 0.02),),


                    ],
                  ),
                ),
                //POSITION WIDGET FOR ALL ,VEGETABLES AND MILK FOOD CIRCLE
                Positioned(
                    left: 25,
                    right: 0,
                    bottom: -52,
                    child:Row(
                      mainAxisAlignment: .start,
                      spacing: 8,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [helper.shadow(AppColors.primaryGreen)],
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: AppColors.primaryGreen,
                                child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.bars,size: 26,fontWeight: .bold,color: Colors.white,)),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("All",style: GoogleFonts.ptSans(color: AppColors.primaryGreen,fontWeight: .bold,fontSize: 18),)
                          ],
                        ),
                        //SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [helper.shadow(AppColors.offWhite)],
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.carrot,size: 26,fontWeight: .bold,color: Colors.black,)),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Vegetables",style: GoogleFonts.ptSans(color: Colors.black.withOpacity(0.5),fontWeight: .w700,fontSize: 18),)
                          ],
                        ),
                        //SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [helper.shadow(AppColors.offWhite)],                          ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.cow,size: 26,fontWeight: .bold,color: Colors.black,)),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Milk",style: GoogleFonts.ptSans(color: Colors.black.withOpacity(0.5),fontWeight: .w700,fontSize: 18),)
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [helper.shadow(AppColors.offWhite)],                          ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.theRedYeti,size: 26,fontWeight: .bold,color: Colors.black,)),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Chicken",style: GoogleFonts.ptSans(color: Colors.black.withOpacity(0.5),fontWeight: .w700,fontSize: 18),)
                          ],
                        ),


                      ],
                    )
                ),


              ],
            ),
          ),
          SizedBox(height: helper.height(context, 0.08),),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
                child: Text("Special Offers",style: GoogleFonts.ptSans(fontWeight: .bold,fontSize: 25),)),
          ),
          SizedBox(height: helper.height(context, 0.017),),
          //ADD BAR SECTION
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Container(
              width: helper.width(context, 1),
              height: helper.height(context, .16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [helper.shadow(AppColors.primaryGreen)],
                borderRadius: BorderRadius.circular(20),

              ),
              child: Stack(

                children: [
                  Positioned(
                    right: 0,
                    left: 1,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                      ),
                      child: Image.asset(
                        "assets/images/banner3.jpeg",
                        width: helper.width(context, 0.5),
                        height: helper.height(context, .16),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15,top: 25),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text("35% Discount",style: GoogleFonts.ptSans(fontSize: 25,fontWeight: .bold,),),
                        Text("100% Guranteed all fresh",style: GoogleFonts.ptSans(color: Colors.white,fontSize: 16),),
                        Text("Grocery Items",style: GoogleFonts.ptSans(color: Colors.white,fontSize: 16),),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),

          SizedBox(height: helper.height(context, 0.018),),
          //POPULAR ITEM AND ICON SECTION
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Container(
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Popular Items",style: GoogleFonts.ptSans(fontWeight: .bold,fontSize: 25),),
                    Container(
                        height:40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryGreen,
                            boxShadow: [helper.shadow(AppColors.primaryGreen)]
                        ),
                        child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.dolly,color: Colors.white,size: 20,))),
                  ],
                )),
          ),
          SizedBox(height: helper.height(context, 0.02),),

          //-----------------------------------------
          //PRODUCT DESIGN SECTION
          // Row(
          //   children: [
          //     productdesign(name: "BeetRoot", subtitle: "- Fresh", price: 200, image: "assets/images/beetroot.png"),
          //     productdesign(name: "BeetRoot", subtitle: "- Fresh", price: 200, image: "assets/images/beetroot.png"),
          //
          //
          //   ],
          // ),

          //category section
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(

                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            //VEGETABLE CARD
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isselectcontainer0=! isselectcontainer0;
                                  });
                                },
                                child: Expanded(
                                  flex: 1,

                                  child: Container(
                                    padding: EdgeInsets.only(top: 10,left:15,right: 15),
                                    height: helper.height(context, 0.32),
                                    width: helper.width(context, 0.2),
                                    decoration: BoxDecoration(
                                        boxShadow: [helper.shadow(AppColors.offWhite)],
                                        borderRadius: BorderRadiusGeometry.circular(20),
                                        color: Colors.white,
                                        border: isselectcontainer0?Border.all(
                                          color: Colors.lightGreen,
                                          width: 3,
                                        ):Border.all(
                                            color: Colors.transparent
                                        )

                                    ),
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text("Vegetables",style: GoogleFonts.ptSans(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.7)),),
                                        SizedBox(height: 5,),
                                        Text("Fresh and best quality",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                                        Text("Vegetables",style: TextStyle(color:Colors.green,fontWeight:.w700),),
                                        Transform.translate(
                                          offset: Offset(0, -10),
                                          child: Image.asset("assets/images/veges.png",height: 150,width: 120,),
                                        ),
                                        SizedBox(height: 5,),
                                        Transform.translate(
                                          offset: Offset(0, -5),
                                          child: Row(
                                            mainAxisAlignment: .spaceBetween,
                                            children: [
                                              Text("Shop Now",style: GoogleFonts.ptSans(fontWeight: .bold,fontSize: 16),),
                                              Container(

                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.yellow,
                                                      boxShadow: [helper.shadow(Colors.grey)]
                                                  ),
                                                  child: IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.pepperHot,) ))
                                            ],
                                          ),
                                        )


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            //CHICKEN CARD
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isselectcontainer1=! isselectcontainer1;                                });
                                },
                                child: Expanded(
                                  flex: 1,

                                  child: Container(
                                    padding: EdgeInsets.only(top: 10,left:15,right: 15),
                                    height: helper.height(context, 0.32),
                                    width: helper.width(context, 0.2),
                                    decoration: BoxDecoration(
                                        boxShadow: [helper.shadow(AppColors.offWhite)],
                                        borderRadius: BorderRadiusGeometry.circular(20),
                                        color: Colors.white,
                                        border: isselectcontainer1?Border.all(
                                          color: Colors.lightGreen,
                                          width: 3,
                                        ):Border.all(
                                            color: Colors.transparent
                                        )

                                    ),
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text("Milk & Yogurt",style: GoogleFonts.ptSans(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.7)),),
                                        SizedBox(height: 5,),
                                        Text("Pure and fresh daily",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                                        Text("Milk,Yogurt",style: TextStyle(color:Colors.lightGreen,fontWeight:.w700),),
                                        Transform.translate(
                                          offset: Offset(0, -10),
                                          child: Image.asset("assets/images/milk1.png",height: 150,width: 180,),
                                        ),
                                        SizedBox(height: 5,),
                                        Transform.translate(
                                          offset: Offset(0, -5),
                                          child: Row(
                                            mainAxisAlignment: .spaceBetween,
                                            children: [
                                              Text("Shop Now",style: GoogleFonts.ptSans(fontWeight: .bold,fontSize: 16),),
                                              Container(

                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.yellow,
                                                      boxShadow: [helper.shadow(Colors.grey)]
                                                  ),
                                                  child: IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.bottleWater,) ))
                                            ],
                                          ),
                                        )


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(width: 13,),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: helper.height(context, 0.19),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusGeometry.circular(20),
                                color: Colors.white,
                              ),
                              child: Stack(
                                clipBehavior: .none,
                                children: [
                                  Center(child: Text("View all",style: TextStyle(fontWeight: .bold,fontSize: 14),)),
                                  Positioned(
                                    right: -1,
                                    top: -2,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.yellow,
                                            boxShadow: [helper.shadow(Colors.grey)]
                                        ),
                                        child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.sliders))),
                                  )

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isselectcontainer2=! isselectcontainer2;                                });
                                },
                                child: Expanded(
                                  flex: 1,

                                  child: Container(
                                    padding: EdgeInsets.only(top: 10,left:15,right: 15),
                                    height: helper.height(context, 0.32),
                                    width: helper.width(context, 0.2),
                                    decoration: BoxDecoration(
                                        boxShadow: [helper.shadow(AppColors.offWhite)],
                                        borderRadius: BorderRadiusGeometry.circular(20),
                                        color: Colors.white,
                                        border: isselectcontainer2?Border.all(
                                          color: Colors.lightGreen,
                                          width: 3,
                                        ):Border.all(
                                            color: Colors.transparent
                                        )

                                    ),
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text("Chicken",style: GoogleFonts.ptSans(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.7)),),
                                        SizedBox(height: 5,),
                                        Text("Farm fresh and hygienic",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                                        Text("Chicken",style: TextStyle(color:Colors.green,fontWeight:.w700),),
                                        Transform.translate(
                                          offset: Offset(0, -10),
                                          child: Image.asset("assets/images/chicken.png",height: 130,width: 160,),
                                        ),
                                        SizedBox(height: 5,),
                                        Transform.translate(
                                          offset: Offset(0, -5),
                                          child: Row(
                                            mainAxisAlignment: .spaceBetween,
                                            children: [
                                              Text("Shop Now",style: GoogleFonts.ptSans(fontWeight: .bold,fontSize: 16),),
                                              Container(

                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.yellow,
                                                      boxShadow: [helper.shadow(Colors.grey)]
                                                  ),
                                                  child: IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.drumstickBite,) ))
                                            ],
                                          ),
                                        )


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isselectcontainer3=! isselectcontainer3;                                });
                                },
                                child: Expanded(
                                  flex: 1,

                                  child: Container(
                                    padding: EdgeInsets.only(top: 10,left:15,right: 15),
                                    height: helper.height(context, 0.32),
                                    width: helper.width(context, 0.2),
                                    decoration: BoxDecoration(
                                        boxShadow: [helper.shadow(AppColors.offWhite)],
                                        borderRadius: BorderRadiusGeometry.circular(20),
                                        color: Colors.white,
                                        border: isselectcontainer3?Border.all(
                                          color: Colors.lightGreen,
                                          width: 3,
                                        ):Border.all(
                                            color: Colors.transparent
                                        )

                                    ),
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text("Desi Ghee",style: GoogleFonts.ptSans(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.7)),),
                                        SizedBox(height: 5,),
                                        Text("Pure and traditional",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                                        Text("Desi Ghee",style: TextStyle(color:Colors.green,fontWeight:.w700),),
                                        Transform.translate(
                                          offset: Offset(0, -5),
                                          child: Image.asset("assets/images/desighee.png",width: 130,height: 150,),
                                        ),
                                        SizedBox(height: 5,),
                                        Transform.translate(
                                          offset: Offset(0, -5),
                                          child: Row(
                                            mainAxisAlignment: .spaceBetween,
                                            children: [
                                              Text("Shop Now",style: GoogleFonts.ptSans(fontWeight: .bold,fontSize: 16),),
                                              Container(

                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.yellow,
                                                      boxShadow: [helper.shadow(Colors.grey)]
                                                  ),
                                                  child: IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.mortarPestle,) ))
                                            ],
                                          ),
                                        )


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
          )


        ],

      ),
    );
  }
}
