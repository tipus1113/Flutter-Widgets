import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/res/app_icons.dart';
import 'package:flutter_app/utils/utils.dart';

class FloatingActionButtonScreen extends StatefulWidget {
  @override
  _FloatingActionButtonScreenState createState() =>
      _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState
    extends State<FloatingActionButtonScreen> {

  int _counterAdd = 1;
  int _multipliedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainLayout(),
    );
  }

  Widget _mainLayout() {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCounterAddText(),
              SizedBox(
                height: 20.0,
                child: Text("x"),
              ),
              _buildMultipliedText(),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _floatingActionButtonPlus(),
                  SizedBox(
                    width: 15.0,
                  ),
                  _floatingActionButtonForMinus(),
                ],
              ),
            ],
          )),
    );
  }

  Widget _floatingActionButtonPlus() {
    return Container(
      child: FloatingActionButton(
        child: AppIcons.addIcon,
        onPressed: _addButtonPressed()
      ),
    );
  }

  Widget _floatingActionButtonForMinus() {
    return Container(
      child: FloatingActionButton(
        child: AppIcons.removeIcon,
        onPressed: _minusButtonPressed()
      ),
    );
  }

  Widget _buildMultipliedText() {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      child: Text("$_multipliedValue",
          style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
    );
  }

  Widget _buildCounterAddText() {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      child: Text("$_counterAdd",
          style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
    );
  }



  /// logical methods -----------------------------------------------------------

   _minusButtonPressed(){
      setState(() {
        _multipliedValue = _multipliedValue ~/ _counterAdd;
        _counterAdd -= 1;
      });
  }

   _addButtonPressed(){
       setState(() {
         _counterAdd += 1;
         _multipliedValue = _multipliedValue * _counterAdd;
       });
   }
}