import 'package:flutter/material.dart';
import 'package:flutter_app/screens/date_picker_screen.dart';
import 'package:flutter_app/screens/floating_action_button_screen.dart';
import 'package:flutter_app/screens/range_slider_screen.dart';
import 'package:flutter_app/screens/slider_screen.dart';
import 'package:flutter_app/screens/toggle_buttons_screen.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/signup_screen.dart';
import 'package:flutter_app/screens/staff_attendance_screen.dart';
import 'Screens/button_screen.dart';
import 'Screens/image_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Simple Interest Calculator',
        home: RangeSliderScreen(),
  ));
}

