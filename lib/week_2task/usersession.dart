import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class usersession
{


  static Future<bool>isloggedin()async{

    var sessionbox =await Hive.openBox("usersession");
    return sessionbox.get("isloggedin", defaultValue: false);
  }

  static Future<void> setloogedin(bool value)async
  {
    var sessionbox =await Hive.openBox("usersession");
    sessionbox.put("isloggedin", value);
  }

  static Future<void> logout()async
  {
    var sessionbox =await Hive.openBox("usersession");
    sessionbox.put("isloggedin", false);
  }

  static Future<void> setcurrentuser(String email)async
  {
    var curruser=await Hive.openBox("curentuserdata");
    curruser.put("email", email);

  }

  static Future<String?> getcurrentuser()async
  {
    var curruser=await Hive.openBox("curentuserdata");
    return curruser.get("email");
  }


}