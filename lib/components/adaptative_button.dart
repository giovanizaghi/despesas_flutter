import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  AdaptativeButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);

    return Platform.isIOS
        ? CupertinoButton(
            color: themeContext.primaryColor,
            child: Text(label),
            onPressed: onPressed,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : RaisedButton(
            color: themeContext.primaryColor,
            textColor: themeContext.textTheme.button.color,
            child: Text(label),
            onPressed: onPressed,
          );
  }
}
