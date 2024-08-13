import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/constants/textstyle.dart';
import 'package:traval_app/widgets/custom_button.dart';
import 'package:traval_app/widgets/custom_textfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ConstColors.backgroundColor,
      backgroundColor: ConstColors.whiteColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    DefaultImages.forgot,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Forgot Password?",
                  style: pSemiBold20.copyWith(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "You forgot your password? don't worry, please\nenter your recovery email address",
                  style: pRegular14.copyWith(
                    fontSize: 12,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                CustomTextField(
                  hintText: "Email Address",
                  sufixIcon: const Icon(
                    Icons.visibility_off_outlined,
                    color: ConstColors.primaryColor,
                    size: 20,
                  ),
                  preFix: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      DefaultImages.email,
                    ),
                  ),
                  isVisible: false,
                  textFieldController: TextEditingController(),
                ),
                const SizedBox(height: 40),
                CustomButton(
                  width: Get.width,
                  text: "Submit",
                  onTap: () {
                  //   Get.off(
                  //     const OTPVerifyScreen(),
                  //     transition: Transition.rightToLeft,
                  //   );
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
