import 'package:flutter/material.dart';
import 'package:goorderz/styles/colors.dart';
import 'package:goorderz/styles/styles.dart';

class CFilledButton extends ElevatedButton {
  CFilledButton({
    required VoidCallback onClick,
    required String text,
  }) : super(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors().red,
            shape: RoundedRectangleBorder(
              borderRadius: CustomRadius.allMedium(),
            ),
          ),
          child: Center(
            child: Text(text),
          ),
        );
}

class COutlinedButton extends OutlinedButton {
  COutlinedButton({
    required VoidCallback onClick,
    required String text,
  }) : super(
          onPressed: onClick,
          style: OutlinedButton.styleFrom(
            surfaceTintColor: Colors.red,
            disabledBackgroundColor: Colors.red,
            disabledForegroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: CustomRadius.allMedium(),
            ),
            side: BorderSide(
              color: AppColors().red,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: AppColors().red),
            ),
          ),
        );
}

class CTextButton extends TextButton {
  CTextButton({
    required VoidCallback onClick,
    required String text,
  }) : super(
          onPressed: onClick,
          child: Text(
            text,
            style: TextStyle(
              color: AppColors().offWhite,
            ),
          ),
        );
}
