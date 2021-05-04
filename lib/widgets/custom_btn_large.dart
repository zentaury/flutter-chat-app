import 'package:flutter/material.dart';

class CustomLargeButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;

  const CustomLargeButton({
    Key key,
    @required this.btnText,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        primary: Colors.blue,
        shape: StadiumBorder(),
      ),
      child: Container(
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            this.btnText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
