import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/constants/textstyle.dart';
import 'package:traval_app/views/VideoScreen/video_screen.dart';
import 'package:traval_app/widgets/custom_button.dart';

class SucessDialog extends StatefulWidget {
  const SucessDialog({Key? key}) : super(key: key);

  @override
  State<SucessDialog> createState() => _SucessDialogState();
}

class _SucessDialogState extends State<SucessDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 380,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 101,
              width: 92.42,
              child: Image.asset(
                DefaultImages.sucess,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Congrats your package\nis active",
              style: pSemiBold18.copyWith(
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            customRow("Active on 20 February 2022"),
            const SizedBox(height: 15),
            customRow("Google Pay"),
            const SizedBox(height: 15),
            const Expanded(child: SizedBox()),
            CustomButton(
              width: Get.width / 1.2,
              text: "Watch Now",
              onTap: () {
                Get.to(
                  const VideoScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
            const SizedBox(height: 15),
          ],
        ));
  }

  Widget customRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: ConstColors.primaryColor.withOpacity(0.10),
            child: const Icon(
              Icons.check,
              color: ConstColors.primaryColor,
              size: 15,
            ),
          ),
          const SizedBox(width: 14),
          Text(
            text,
            style: pRegular14.copyWith(
              fontSize: 12,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
