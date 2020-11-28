import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/res/app_colors.dart';
import 'package:flutter_app/utils/utils.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 0.0;
  double _minSliderValue = 0.0;
  double _maxSliderValue = 10.0;

 Color _rangeColor ;


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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSeekBarForColorChange(),
            _buildContainerForColorChange(),
          ],
        ),
      ),
    );
  }




Widget _buildSeekBarForColorChange() {
    return Container(
      child: Slider(
        min: _minSliderValue,
        max: _maxSliderValue,
        divisions: 10,
        value: _sliderValue,
        activeColor: AppColors.darkTurquoise,
        inactiveColor: Colors.red,
        onChanged: (newValue){
          setState(() {
            _sliderValue = newValue;
            if(_sliderValue >= 0.0 && _sliderValue <= 1.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 1");
              _rangeColor = Colors.red;
            }else if(_sliderValue >= 1.0 && _sliderValue <= 2.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 2");
              _rangeColor = Colors.green;
            } if(_sliderValue >= 2.1 && _sliderValue <= 3.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 3");
              _rangeColor = Colors.yellow;
            } if(_sliderValue >= 3.1 && _sliderValue <= 4.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 4");
              _rangeColor = Colors.blue;
            } if(_sliderValue >= 4.1 && _sliderValue <= 5.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 5");
              _rangeColor = AppColors.aqua;
            } if(_sliderValue >= 5.1 && _sliderValue <= 6.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 6");
              _rangeColor = Colors.orange;
            } if(_sliderValue >= 6.1 && _sliderValue <= 7.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 7");
              _rangeColor = Colors.grey;
            } if(_sliderValue >= 7.1 && _sliderValue <= 8.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 8");
              _rangeColor = Colors.teal;
            } if(_sliderValue >= 8.1 && _sliderValue <= 9.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 9");
              _rangeColor = Colors.deepPurpleAccent;
            } if(_sliderValue >= 9.1 && _sliderValue <= 10.0){
              Util.showLog("_SeekBarScreenState","_seekBarForColorChange: 10");
              _rangeColor = Colors.lightGreenAccent;
            }
          });
        },
      ),
    );
}

 Widget _buildContainerForColorChange() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: _rangeColor,
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: _rangeColor,
          borderRadius: BorderRadius.circular(30.0)
        ),
      ),
    );
 }
}
