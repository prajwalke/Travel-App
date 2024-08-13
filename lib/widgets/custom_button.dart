import 'package:flutter/material.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/textstyle.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback onTap;
  final double? fontSize;
  const CustomButton(
      {Key? key,
      required this.width,
      required this.text,
      required this.onTap,
      this.fontSize = 16.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ConstColors.primaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: pRegular14.copyWith(
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
