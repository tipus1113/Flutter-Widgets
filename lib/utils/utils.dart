import 'package:flutter/cupertino.dart';

class Util {
  Util._();

  static showLog(String tag,String message){
    print("$tag : $message");
  }

  static double getMediaQueryWidth (BuildContext context, double value){
    return MediaQuery.of(context).size.width/value;
  }

}