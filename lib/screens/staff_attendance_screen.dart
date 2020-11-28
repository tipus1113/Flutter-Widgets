import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaffAttendanceScreen extends StatefulWidget {
  @override
  _StaffAttendanceScreenState createState() => _StaffAttendanceScreenState();
}

class _StaffAttendanceScreenState extends State<StaffAttendanceScreen> {

  double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Details"),
        ),
        body: _mainLayout()
    );
  }

  Widget _mainLayout() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(_minimumPadding),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  Widget iconTextFieldRow(){
    return Row(
      children: [
      ],
    );
  }

}


