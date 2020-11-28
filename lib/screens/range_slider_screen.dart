import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/utils.dart';

class RangeSliderScreen extends StatefulWidget {
  @override
  _RangeSliderScreenState createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {

 RangeValues values =  RangeValues(0 , 10000);
 RangeLabels labels = RangeLabels('0' , '10000');

 String _rangeText = '';


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: _mainLayout(),
    );
  }



 Widget _mainLayout() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center

          ,
          children: [
            _buildRangeSlider(),
          ],
        ),
      ),
    );
 }




 Widget _buildRangeSlider() {
    return Container(
      child: RangeSlider(
        min: 0,
        max: 10000,
        labels: labels,
        divisions: 10,
        values: values,
        onChanged: (newValue){
          // Util.showLog("_RangeSliderScreenState","_buildRangeSlider: newValue ${newValue.start}, ${ newValue.end} ");
          setState(() {
            values = newValue;
            labels = RangeLabels(newValue.start.toString(), newValue.end.toString());

            if(newValue.start >= 0 && newValue.end<= 1000 ){
              _rangeText = RangeLabels(newValue.start.toString(), newValue.end.toString());
            } else if(newValue.start >= 0 && newValue.end<= 2000 ){
              _rangeText = RangeLabels(newValue.start.toString(), newValue.end.toString());
            } else if(newValue.start >= 0 && newValue.end<= 3000 ){
              _rangeText = RangeLabels(newValue.start.toString(), newValue.end.toString());
            } else if(newValue.start >= 7000 && newValue.end<= 10000 ){
              _rangeText = RangeLabels(newValue.start.toString(), newValue.end.toString());
            } else if(newValue.start >= 6000 && newValue.end<= 10000 ){
              _rangeText = RangeLabels(newValue.start.toString(), newValue.end.toString());
            } else if(newValue.start >= 5000 && newValue.end<= 10000 ){
              _rangeText = RangeLabels(newValue.start.toString(), newValue.end.toString());
            }
          });
        },
      ),
    );
 }





}
