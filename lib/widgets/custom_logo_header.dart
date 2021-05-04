import 'package:flutter/material.dart';

class CustomLogoHeader extends StatelessWidget {
  final AssetImage assetImage;
  final String headerText;
  final double fontSize;

  const CustomLogoHeader({
    Key key,
    this.assetImage,
    this.headerText,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 100),
        width: 170,
        child: Column(
          children: [
            Image(
              image: this.assetImage,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              this.headerText,
              style: TextStyle(fontSize: this.fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
