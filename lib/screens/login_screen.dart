import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/utils.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  double containerWidth;

  double containerHeight;

  double _minimumPadding = 10.0;

  @override
  Widget build(BuildContext context) {
    containerWidth = MediaQuery.of(context).size.width / 1.3;
    containerHeight = MediaQuery.of(context).size.height / 1.9;

    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadImageFromAsset(),
            _mainLayout(),
          ],
        ),
      ),
    );
  }

  Widget _mainLayout() {
    return Center(
      child: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 7.00,
              )
            ]),
        child: Column(
          children: [
            SizedBox(height: 30.0),
            rowMaterialForText(),
            rowMaterialForTextFieldOfEmail(),
            SizedBox(height: 7.0),
            rowMaterialForTextFieldOfPassword(),
            SizedBox(height: 15.0),
            rowMaterialForCheckBox(),
            rowMaterialForRaisedButton(),
            SizedBox(height: 7.0),
            rowMaterialForTwoRaisedButtons(),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  Widget rowMaterialForText() {
    Util.showLog("_LogInScreenState", "rowMaterialForText: Called");
    return Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Text(
        "Login to your account.",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15.0, fontFamily: 'Ubuntu'),
      ),
    );
  }

  Widget rowMaterialForTextFieldOfEmail() {
    Util.showLog("_LogInScreenState", "rowMaterialForTextFieldOfEmail: called");
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0, right: 15.0, left: 15.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Email',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
    prefixIcon: Padding(
    padding: EdgeInsets.all(0.0),
    child: Icon(
    Icons.mail,
    color: Colors.grey,
    ),
    ),
      ),
    ));
  }

  Widget rowMaterialForTextFieldOfPassword() {
    Util.showLog(
        "_LogInScreenState", "rowMaterialForTextFieldOfPassword: called");
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0, right: 15.0, left: 15.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Password',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
    prefixIcon: Padding(
    padding: EdgeInsets.all(0.0),
    child: Icon(
    Icons.lock,
    color: Colors.grey,
    ),
    ),
      ),
    ));
  }

  Widget rowMaterialForCheckBox() {
    Util.showLog("_LogInScreenState", "rowMaterialForCheckBox: called");
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (bool value) {
              setState(() {});
            },
          ),
          Text(
            "Remember me",
            style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }

  Widget rowMaterialForRaisedButton() {
    Util.showLog("_LogInScreenState", "rowMaterialForRaisedButton: called");
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0, right: 15.0, left: 15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75, // Will take 50% of screen space
        child: RaisedButton(
            color: Colors.lightBlueAccent,
            child: Text(
              'SIGN IN',
              style: TextStyle(color: Colors.white, fontFamily: 'Goldman'),
            ),
            onPressed: () => null),
      ),
    );
  }

  Widget rowMaterialForTwoRaisedButtons() {
    Util.showLog("_LogInScreenState", "rowMaterialForTwoRaisedButtons: called");
    return Padding(
      padding: EdgeInsets.only(top: 15.0, right: 16.0, left: 18.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
              ),
            ),
          ),
          SizedBox(width: 2.0),
          Expanded(
            child: Container(
              child: Text(
                'Create New Account',
                style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoadImageFromAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage cnwAsset = AssetImage('images/cnw.png');
    Image image =
        Image(image: cnwAsset, width: 120, height: 120, fit: BoxFit.contain);
    return Container(
        child: image);
  }
}
