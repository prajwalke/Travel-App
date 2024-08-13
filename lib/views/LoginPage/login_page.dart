import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/constants/textstyle.dart';
import 'package:traval_app/views/ForgotPassword/forgot_password_screen.dart';
import 'package:traval_app/views/HomePagee/home_page.dart';
import 'package:traval_app/widgets/custom_button.dart';
import 'package:traval_app/widgets/custom_textfield.dart';
import 'package:traval_app/widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ConstColors.backgroundColor,
       backgroundColor: ConstColors.whiteColor,

      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).padding.top + 30,
          ),
          Text(
            "Login",
            style: pSemiBold20.copyWith(
              fontSize: 24,
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
              physics: const ClampingScrollPhysics(),
              children: [
                const Row(
                  children: [
                    SocialButton(
                      text: "Google",
                      image: DefaultImages.google,
                    ),
                    SizedBox(width: 10),
                    SocialButton(
                      text: "Facebook",
                      image: DefaultImages.facebook,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Container(
                      height: 1,
                      width: (Get.width / 2) - 36.5,
                      // color: ConstColors.whiteColor.withOpacity(0.20),
                      color: Colors.black.withOpacity(0.20),

                      

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "or",
                        style: pRegular14.copyWith(
                          fontSize: 12,
                          // color: const Color(0xffCBC9D8),
                          color: Colors.black
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: (Get.width / 2) - 36.5,
                      // color: ConstColors.whiteColor.withOpacity(0.20),
                      color: Colors.black.withOpacity(0.20),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                CustomTextField(
                  hintText: "Email Address",
                  sufixIcon: const SizedBox(),
                  preFix: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      DefaultImages.email,
                    ),
                  ),
                  isVisible: false,
                  textFieldController: TextEditingController(),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: "Password",
                  sufixIcon: const Icon(
                    Icons.visibility_off_outlined,
                    color: ConstColors.primaryColor,
                    size: 20,
                  ),
                  preFix: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      DefaultImages.password,
                      fit: BoxFit.fill,
                    ),
                  ),
                  isVisible: false,
                  textFieldController: TextEditingController(),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(
                          const ForgotPasswordScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: pSemiBold18.copyWith(
                          fontSize: 12,
                          color: ConstColors.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                CustomButton(
                  width: Get.width,
                  text: "Login",
                  onTap: () {
                    // Get.to(
                    //   const TabScreen(),
                    //   transition: Transition.rightToLeft,
                    // );
                    Get.to(
                       MyHomePage(),
                      transition: Transition.rightToLeft,
                    );
                  },
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text(
                    "Do you already have an account?",
                    style: pRegular14.copyWith(
                      fontSize: 12,
                      color: const Color(0xffCBC9D8),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                InkWell(
                  onTap: () {
                    // Get.off(
                    //   const SignupScreen(),
                    //   transition: Transition.rightToLeft,
                    // );
                     Get.off(
                     MyHomePage(),
                      transition: Transition.rightToLeft,
                    );
                  },
                  child: Center(
                    child: Text(
                      "Sign up now",
                      style: pSemiBold18.copyWith(
                        fontSize: 12,
                        color: ConstColors.primaryColor,
                      ),
                    ),
                  ),
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
