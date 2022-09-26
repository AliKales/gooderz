import 'package:flutter/material.dart';
import 'package:goorderz/extension/extensions.dart';
import 'package:goorderz/styles/colors.dart';
import 'package:goorderz/styles/styles.dart';
import 'package:goorderz/ui/components/button_bottom.dart';
import 'package:goorderz/ui/components/c_appbar.dart';
import 'package:goorderz/ui/components/c_text_field.dart';
import 'package:goorderz/utils/custom_navigation.dart';

class PinCodePage extends StatelessWidget with CustomNavigation {
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: _appBar(context),
      body: _mainWidgetGrey(context),
      bottomNavigationBar: ButtonBottom(
        onClick: () {},
        text: "DONE",
        backgroundColor: AppColors().white,
      ),
    );
  }

  Widget _mainWidgetGrey(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors().orange,
          width: double.maxFinite,
          height: context.dynamicHeight(0.2),
        ),
        Container(
          margin: CustomPadding.onlyTop(PaddingValues.medium),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: AppColors().offWhite,
            borderRadius: CustomRadius.onlyTopRadius(RadiusValues.large),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _title(context,
                    "CREATE A PIN CODE WITH 6 NUMBERS TO SAFEGUARD YOUR ACCOUNT"),
                _textField(AppColors().white, "Enter Password"),
                _customSpace(context),
                _textField(AppColors().white, "Re-enter Password"),
                SizedBox(height: 0.03.toDynamicHeight(context)),
                _mainWidgetWhite(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _mainWidgetWhite(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors().white,
        borderRadius: CustomRadius.onlyTopRadius(RadiusValues.large),
      ),
      child: Column(
        children: [
          _title(context, "YOUR INFORMATION"),
          _textField(AppColors().offWhite, "Full name"),
          _customSpace(context),
          _textField(AppColors().offWhite, "Your email"),
        ],
      ),
    );
  }

  SizedBox _customSpace(BuildContext context) =>
      SizedBox(height: 0.03.toDynamicHeight(context));

  Padding _textField(Color color, String text) {
    return Padding(
      padding: CustomPadding.horizontalLarge(),
      child: CTextField(
        background: color,
        text: text,
      ),
    );
  }

  Padding _title(BuildContext context, String text) {
    return Padding(
      padding: CustomPadding.allLarge(),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Texts.titleMedium(context),
      ),
    );
  }

  CAppBar _appBar(BuildContext context) {
    return CAppBar(
      onBackIconClick: () {
        back(context);
      },
      title: "Create an account",
      backgroundColor: AppColors().orange,
    );
  }
}
