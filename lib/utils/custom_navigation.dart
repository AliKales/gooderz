import 'package:flutter/material.dart';

mixin CustomNavigation {
  void pushReplace(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void back(BuildContext context) => Navigator.pop(context);
}
