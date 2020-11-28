import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ImageScreen extends StatefulWidget{
  @override
  _StaffAttendanceState createState() => _StaffAttendanceState();
}

class _StaffAttendanceState extends State<ImageScreen>{
  final double _minimumPadding = 5.0;
  final String imageUrl = "https://images.unsplash.com/photo-1605089697294-171c17c66c80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80";
  final String svgImage = 'icons/ic_phone.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Details"),
        ),
        body: _mainLayout()
        );
  }

  Widget _mainLayout(){
    return  Container(
      child: Padding(
        padding: EdgeInsets.all(_minimumPadding),
        child: Column(
          children: [
            Flexible(flex: 1,child: LoadImageFromAsset()),
            Flexible(flex: 1,child: loadImageFromUrl()),
            Flexible(flex: 1,child: loadSvgImage()),
          ],
        ),
      ),
    );
  }

 Widget loadImageFromUrl() {
    return Image.network(imageUrl);
 }

 Widget loadSvgImage (){
    return SvgPicture.asset(svgImage);
 }

}

class LoadImageFromAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage cnwAsset = AssetImage('images/cnw.png');
    Image image = Image(image: cnwAsset, width: 250, height: 250, fit: BoxFit.contain);
    return Container (child: image);
  }
}


