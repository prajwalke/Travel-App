import 'package:flutter/material.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/textstyle.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget sufixIcon;
  final Widget preFix;
  final bool isVisible;
  final TextEditingController textFieldController;
  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.sufixIcon,
      required this.preFix,
      required this.isVisible,
      required this.textFieldController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isVisible,
      controller: textFieldController,
      style: pSemiBold18.copyWith(
        fontSize: 12,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 14, top: 22, right: 14),
        prefixIcon: preFix,
        suffixIcon: sufixIcon,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ConstColors.whiteColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ConstColors.whiteColor.withOpacity(0.1),
          ),
        ),
        hintText: hintText,
        hintStyle: pRegular14.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
