import 'package:flutter/material.dart';
import 'package:flutter_app/res/app_dimens.dart';
import 'package:flutter_app/res/app_strings.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:intl/intl.dart';

class DatePickerScreen extends StatefulWidget {
  @override
  _DatePickerScreenState createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  String _dateTimeForDueDate;
  String _dateTimeForCurrentDate;

  String colorGroupValue = '';

  DateTime _dueDateTime;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainLayout(),
    );
  }

  Widget _buildDatePickerTextDueDate() {
    return Text(_dateTimeForDueDate == null ? "" : _dateTimeForDueDate);
  }

  Widget _buildDatePickerTextCurrentDate() {
    return Text(_dateTimeForCurrentDate == null ? "" : _dateTimeForCurrentDate);
  }

  Widget _buildDatePickerRaisedButtonDueDate() {
    return RaisedButton(
        child: Text("Due Date"),
        onPressed: () {
          showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2030))
              .then((date) {
            setState(() {
              if (date == null) {
                return;
              }
              DateFormat dateFormat = DateFormat("dd-MM-yyyy");
              _dateTimeForDueDate = dateFormat.format(date);

              DateTime dateTime = dateFormat.parse(_dateTimeForDueDate);

              Util.showLog("_DatePickerScreenState",
                  "_buildDatePickerRaisedButtonCurrentDate: dateTime $dateTime");

              _dueDateTime = dateTime;

              // _dateTimeForDueDate = date;
            });
          });
        });
  }

  Widget _buildDatePickerRaisedButtonCurrentDate() {
    return RaisedButton(
        child: Text("Current Date"),
        onPressed: () {
          showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2030))
              .then((date) {
            setState(() {
              if (date == null) {
                return;
              }
              DateFormat dateFormat = DateFormat("dd-MM-yyyy");
              _dateTimeForCurrentDate = dateFormat.format(date);

              DateTime currentDateTime =
                  dateFormat.parse(_dateTimeForCurrentDate);

              Util.showLog("_DatePickerScreenState",
                  "_buildDatePickerRaisedButtonCurrentDate: dateTime $currentDateTime");

              if(_dueDateTime!=null) {
                if (_dueDateTime.isBefore(currentDateTime)) {
                  colorGroupValue = AppStrings.red;
                } else if (_dueDateTime.isAfter(currentDateTime)) {
                  colorGroupValue = AppStrings.yellow;
                } else if (_dueDateTime.isAtSameMomentAs(currentDateTime)) {
                  colorGroupValue = AppStrings.green;
                }
              }
            });
          });
        });
  }

  Widget _radioButtonsOfColors() {
    return Row(
      children: [
        Flexible(
          flex: 3,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  activeColor: Colors.red,
                  value: AppStrings.red,
                  groupValue: colorGroupValue,
                  onChanged: (val){},
                ),
                Text(
                  AppStrings.red,
                  style: TextStyle(fontSize: AppDimens.MAIN_TEXT_SIZE),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  activeColor: Colors.yellow,
                  value: AppStrings.yellow,
                  groupValue: colorGroupValue,
                  onChanged: (val){},
                ),
                Text(
                  AppStrings.yellow,
                  style: TextStyle(fontSize: AppDimens.MAIN_TEXT_SIZE),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Radio(
                  activeColor: Colors.green,
                  value: AppStrings.green,
                  groupValue: colorGroupValue,
                  onChanged: (val){},
                ),
                Text(
                  AppStrings.green,
                  style: TextStyle(fontSize: AppDimens.MAIN_TEXT_SIZE),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _mainLayout() {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDatePickerRaisedButtonDueDate(),
                  SizedBox(
                    width: 40.0,
                  ),
                  _buildDatePickerTextDueDate(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDatePickerRaisedButtonCurrentDate(),
                  SizedBox(
                    width: 40.0,
                  ),
                  _buildDatePickerTextCurrentDate(),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              _radioButtonsOfColors(),
            ],
          ),
        ),
      ),
    );
  }
}
