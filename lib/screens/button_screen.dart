import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {

  final double _minimumPadding = 5.0;

  final double topMargin = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons")),
      body: _layoutOfBody()
    );
  }

 Widget _layoutOfBody() {
  return Center(
      child: Container(
    child: Padding(
      padding: EdgeInsets.all(_minimumPadding),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           _buildSimpleRaisedButton(),

          SizedBox(height: topMargin),

          _buildRoundedBorderRaisedButton(),
           SizedBox(height: topMargin),
           _buildGradientRaisedButton(),
           SizedBox(height: topMargin),
         _buildCircleRaisedButton(),

         ],
       )
   )));
 }

  Widget _buildSimpleRaisedButton() {
    return  RaisedButton(
      elevation: 10,
        color: Colors.blue,
        onPressed: (){},
      textColor: Colors.white,
      child: Container(
          width: 200,
          height: 30,
          child: Center(child: Text("Simple Button",textAlign: TextAlign.center,)),
      ),
    );
  }

  Widget _buildRoundedBorderRaisedButton() {
    return RaisedButton(
      elevation: 10,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0)),
      color: Colors.red,
      onPressed: (){},
      textColor: Colors.white,
      child: Container(
        width: 200,
        height: 30,
        child: Center(child: Text("Rounded Corner Button", textAlign: TextAlign.center)),
      ),
    );
  }

  Widget _buildGradientRaisedButton() {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xff00F260), Color(0xff0575E6)],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              // offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      child: InkWell(
        onTap: (){},
      child: Container(
            width: 233,
            height: 35,
            child: Center(child: Text("Gradient Button", style: TextStyle(color: Colors.white),))
          ),
    ),
    ));
  }

  Widget _buildCircleRaisedButton() {
    return RaisedButton(
      elevation: 10,
      onPressed: () {},
      color: Colors.green,
      textColor: Colors.white,
      child:Container(
        height: 80,
      width: 80,
      child: Center(
        child: Text(
          "ok",
        style: TextStyle(fontSize: 20.0),
        ),
      ),
      ),
      shape: CircleBorder(),
    );

    // Container(
    //   width: 200,
    //   height: 30,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(30.0),
    //       side: BorderSide(color: Colors.red)
    //   ),
    //   color: Colors.green,
    //   margin: EdgeInsets.all(_fixedMargin),
    //   child: RaisedButton(
    //     child: Text("Circle Button"),
    //   ),
    // );
  }
}
