import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/res/app_colors.dart';
import 'package:flutter_app/res/app_dimens.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ToggleButtonScreen extends StatefulWidget {
  @override
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: _value ? AssetImage("images/cnw.png") : AssetImage("images/cnw.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(AppDimens.EDGE_REGULAR),
              child: Column(
                children: [
                 _customSwitchButton(),
                  _normalToggleButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

 Widget _customSwitchButton() {
    return  LiteRollingSwitch(
      value: _value,
      textOn: "on",
      textOff: "off",
      colorOn: Colors.greenAccent,
      colorOff: Colors.redAccent,
      iconOn: Icons.done,
      iconOff: Icons.toggle_off,
      textSize: 15.0,
      onChanged: (bool value){
      },
    );
  }
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Widget _normalToggleButton () {
    return Container(
      child: Transform.scale(
        scale: 2.0,
        child: Switch(
          activeColor : Colors.greenAccent,
          inactiveThumbColor: Colors.redAccent,
          value: _value,
            activeThumbImage: AssetImage("images/cnw.png"),
            inactiveThumbImage : AssetImage("images/simple_interest.png"),
            onChanged: (bool value){
             setState(() {
               _value = value;
             });
            },
        ),
      ),
    );
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
}
