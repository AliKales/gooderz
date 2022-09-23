import 'package:flutter/material.dart';
import 'package:goorderz/styles/styles.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    super.key,
    this.background,
    this.text,
    this.prefixIcon,
    this.suffixIcon,
  });

  final Color? background;
  final String? text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: background,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: CustomPadding.horizontalMedium(),
          hintText: text,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
