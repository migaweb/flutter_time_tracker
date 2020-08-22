import 'package:flutter/material.dart';
import 'package:flutter_time_tracker/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton(
      {@required String text,
      Color color,
      Color textColor,
      @required Image image,
      Function onPressed})
      : assert(text != null,
            'The text parameter is required for SocialSignInButton'),
        assert(image != null,
            'The image parameter is required for SocialSignInButton'),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                opacity: 0,
                child: image,
              ),
            ],
          ),
          color: color,
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
