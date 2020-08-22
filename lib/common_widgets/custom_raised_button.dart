import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final Function onPressed;

  CustomRaisedButton(
      {this.child,
      this.color,
      this.borderRadius: 2.0,
      this.onPressed,
      this.height: 50.0})
      : assert(borderRadius != null,
            'borderRadius in CustomRaisedButton cannot be null.');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        color: color,
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
