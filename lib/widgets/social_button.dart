import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/textstyle.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String image;
  const SocialButton({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: (Get.width / 2) - 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // color: ConstColors.whiteColor.withOpacity(0.10),
        color: ConstColors.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(image),
          ),
          Text(
            text,
            style: pRegular14.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
