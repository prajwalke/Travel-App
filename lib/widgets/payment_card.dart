import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/textstyle.dart';

class PaymentCard extends StatefulWidget {
  final Widget widget;
  final String title;
  final bool isSelect;
  const PaymentCard(
      {Key? key,
      required this.widget,
      required this.title,
      required this.isSelect})
      : super(key: key);

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: ConstColors.whiteColor.withOpacity(0.12),
        color: Colors.grey
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: widget.widget,
            ),
            const SizedBox(width: 12),
            Text(
              widget.title,
              style: pSemiBold18.copyWith(fontSize: 14),
            ),
            const Expanded(child: SizedBox()),
            Container(
              height: 19,
              width: 19,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: widget.isSelect == true
                      ? const Color(0xffFFAD09)
                      // : ConstColors.whiteColor.withOpacity(0.5),
                      :Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundColor: widget.isSelect == true
                      ? const Color(0xffFFAD09)
                      : Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
