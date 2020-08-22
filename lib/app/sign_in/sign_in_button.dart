import 'package:flutter/material.dart';
import 'package:flutter_time_tracker/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton(
      {@required String text, Color color, Color textColor, Function onPressed})
      : assert(text != null,
            'The text parameter is required for the SignInButton'),
        super(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
          color: color,
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
