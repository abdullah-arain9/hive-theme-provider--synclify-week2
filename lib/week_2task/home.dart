import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:synclifyinternship/color.dart';
import 'package:synclifyinternship/helper/helpercode.dart';
import 'package:synclifyinternship/week_1task/loginscreen.dart';
import 'package:synclifyinternship/week_2task/theme_provider.dart';
import 'package:synclifyinternship/week_2task/usersession.dart';

class homee extends StatefulWidget {
  const homee({super.key});

  @override
  State<homee> createState() => _homeeState();
}

class _homeeState extends State<homee> {
  Map? data;

  @override
  void initState() {
    super.initState();
    loaduserdata();
  }

  void loaduserdata() async {
    var curruserdetail = await usersession.getcurrentuser();
    var userdata = await Hive.openBox('signupdata');
    var userrec = userdata.get(curruserdetail);
    setState(() {
      data = userrec;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.only(top: 70, right: 25, left: 25),
        child: data == null
            ? Center(child: CircularProgressIndicator())
            : Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow.shade400,
              ),
              child: ListTile(
                title: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  data!['name'].toString(),
                  style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // THEME TOGGLE — ab Provider se
                    Consumer<ThemeProvider>(
                      builder: (context, themeProvider, child) {
                        return Container(
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            boxShadow: [helper.shadow(Colors.orange)],
                            shape: BoxShape.circle,
                            color: Colors.orange.shade200,
                          ),
                          child: IconButton(
                            onPressed: () {
                              themeProvider.toggleTheme();
                            },
                            icon: FaIcon(
                              themeProvider.themeMode == ThemeMode.dark
                                  ? FontAwesomeIcons.sun
                                  : FontAwesomeIcons.moon,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),

                    // LOGOUT BUTTON
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [helper.shadow(Colors.purple)],
                        shape: BoxShape.circle,
                        color: Colors.purpleAccent.shade200,
                      ),
                      child: IconButton(
                        onPressed: () async {
                          await usersession.logout();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login()),
                          );
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.arrowRightFromBracket,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}