import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/res/app_colors.dart';
import 'package:flutter_app/res/app_dimens.dart';
import 'package:flutter_app/res/app_icons.dart';
import 'package:flutter_app/res/app_strings.dart';
import 'package:flutter_app/utils/utils.dart';

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  List<String> _menuItems = [AppStrings.married, AppStrings.unmarried];
  int _imageIndex = 0;
  String _currentItemSelected = AppStrings.married;

  List<ImageProvider> _images = [ AssetImage("images/cnw.png"), AssetImage("images/simple_interest.png")];

  double _containerWidth;
  double _containerHeight;

  String genderGroupValue = '';
  bool checkBoxValueMusic = false;
  bool checkBoxValueSports = false;
  bool checkBoxValueLearning = false;

  bool _isSelected = false;
  bool _falseBoolSelected = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _containerHeight = MediaQuery.of(context).size.height / 10;
    return Scaffold(body: _mainLayout());
  }

//Body Layout-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _mainLayout() {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.EDGE_REGULAR),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: AppDimens.SIZE_REGULAR),
                _textFieldOfFirstName(),
                //
                _textFieldOfLastName(),
                //
                _radioButtonsOfMaleAndFemale(),
                //
                _checkBoxForHobbies(),
                //
                _dropDownForMaritalStatus(),
                //
                _customCheckbox(),
                //
                _customCheckBoxWithOnlyColor(),
                //
                _cnwImage(),
                //
                // simpleImage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

//TextFormField First Name-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _textFieldOfFirstName() {
    return Container(
      height: _containerHeight,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: AppStrings.firstName,
          contentPadding: EdgeInsets.fromLTRB(
              AppDimens.SIZE_SMALL,
              AppDimens.SIZE_EXTRA_SMALL,
              AppDimens.SIZE_SMALL,
              AppDimens.SIZE_EXTRA_SMALL),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.EDGE_EXTRA_SMALL)),
        ),
      ),
    );
  }

//TextFormField Last Name-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _textFieldOfLastName() {
    return Container(
      height: _containerHeight,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: AppStrings.lastName,
          contentPadding: EdgeInsets.fromLTRB(
              AppDimens.SIZE_SMALL,
              AppDimens.SIZE_EXTRA_SMALL,
              AppDimens.SIZE_SMALL,
              AppDimens.SIZE_EXTRA_SMALL),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.EDGE_EXTRA_SMALL)),
        ),
      ),
    );
  }

//RadioButtons-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _radioButtonsOfMaleAndFemale() {
    return Container(
      margin: EdgeInsets.only(bottom: AppDimens.EDGE_MEDIUM_PLUS),
      child: Row(
        children: [
          Flexible(
            flex: AppDimens.FLEX_SMALL,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: AppStrings.male,
                    groupValue: genderGroupValue,
                    onChanged: (val) {
                      genderGroupValue = val;
                      setState(() {});
                    },
                  ),
                  Text(
                    AppStrings.male,
                    style: TextStyle(fontSize: AppDimens.MAIN_TEXT_SIZE),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: AppDimens.FLEX_REGULAR,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: AppStrings.female,
                    groupValue: genderGroupValue,
                    onChanged: (val) {
                      genderGroupValue = val;
                      setState(() {});
                    },
                  ),
                  Text(AppStrings.female),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//CheckBox-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _checkBoxForHobbies() {
    return Container(
      margin: EdgeInsets.only(bottom: AppDimens.EDGE_MEDIUM_PLUS),
      child: Row(
        children: [
          Flexible(
            flex: AppDimens.FLEX_SMALL,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        value: checkBoxValueMusic,
                        onChanged: (bool value) {
                          setState(() {
                            checkBoxValueMusic = value;
                            checkBoxValueSports = false;
                            checkBoxValueLearning = false;
                          });
                        },
                      ),
                      Text(AppStrings.music)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: AppDimens.FLEX_SMALL,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        value: checkBoxValueSports,
                        onChanged: (bool value) {
                          setState(() {
                            checkBoxValueSports = value;
                            checkBoxValueMusic = false;
                            checkBoxValueLearning = false;
                          });
                        },
                      ),
                      Text(AppStrings.sports)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: AppDimens.FLEX_SMALL,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        value: checkBoxValueLearning,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkBoxValueLearning = value;
                              checkBoxValueMusic = false;
                              checkBoxValueSports = false;
                            },
                          );
                        },
                      ),
                      Text(AppStrings.learning)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _dropDownForMaritalStatus() {
    return Container(
      margin: EdgeInsets.only(bottom: AppDimens.EDGE_MEDIUM_PLUS),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.maritalStatus,
                    // textAlign: TextAlign.left,
                    style: TextStyle(fontSize: AppDimens.MEDIUM_TEXT_SIZE),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grey),
                  borderRadius: BorderRadius.circular(3.0)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: DropdownButton<String>(
                  items: _menuItems.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(fontSize: AppDimens.MEDIUM_TEXT_SIZE),),
                    );
                  }).toList(),
                  value: _currentItemSelected,
                  onChanged: (value) {
                    _onDropDownItemSelected(value);
                  },
                  dropdownColor: AppColors.GREY,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onDropDownItemSelected(value) {
    setState(() {
      this._currentItemSelected = value;
      this._imageIndex = _menuItems.indexOf(value);
    });
  }

//customCheckbox-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _customCheckbox() {
    return Container(
      margin: EdgeInsets.only(bottom: AppDimens.EDGE_MEDIUM_PLUS),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: _isSelected ? Colors.blue : Colors.transparent,
              border: _isSelected ? null : Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(AppDimens.EDGE_EXTRA_SMALL)),
          width: AppDimens.SIZE_SMALL,
          height: AppDimens.SIZE_SMALL,
          child: _isSelected
              ? Icon(
                  Icons.check,
                  size: AppDimens.ICON_SMALL,
                  color: AppColors.white,
                )
              : null,
        ),
      ),
    );
  }

//customCheckbox-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Widget _customCheckBoxWithOnlyColor() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _falseBoolSelected = !_falseBoolSelected;
        });
      },
      child: Container(
        height: AppDimens.SIZE_REGULAR,
        width: AppDimens.SIZE_REGULAR,
        decoration: BoxDecoration(
            color: _falseBoolSelected ? AppColors.cyan : AppColors.grey,
            borderRadius: BorderRadius.circular(AppDimens.EDGE_EXTRA_SMALL)),
        child: AppIcons.checkIcon,
      ),
    );
  }

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  Widget _cnwImage() {
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(image: DecorationImage(image: _images[_imageIndex])));
  }

  // Widget simpleImage() {
  //   return LoadImageFromAssetForUnmarried();
  // }

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

}

class LoadImageFromAssetForMarried extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage cnwAsset = AssetImage('images/cnw.png');
    Image image =
        Image(image: cnwAsset, width: 100, height: 100, fit: BoxFit.contain);
    return Container(child: image);
  }
}

class LoadImageFromAssetForUnmarried extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage cnwAsset = AssetImage('images/simple_interest.png');
    Image image =
        Image(image: cnwAsset, width: 100, height: 100, fit: BoxFit.contain);
    return Container(child: image);
  }
}
