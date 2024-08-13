import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/constants/textstyle.dart';
import 'package:traval_app/controller/home_controller.dart';
import 'package:traval_app/widgets/custom_button.dart';
import 'package:traval_app/widgets/payment_card.dart';
import 'package:traval_app/widgets/sucess_dialog.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ConstColors.backgroundColor,
      backgroundColor: ConstColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: CircleAvatar(
              // backgroundColor: ConstColors.whiteColor.withOpacity(0.30),
              backgroundColor: ConstColors.primaryColor,
              child: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: ConstColors.whiteColor,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Summary",
                      style: pSemiBold18.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: ConstColors.whiteColor.withOpacity(0.12),
                        color: ConstColors.primaryColor
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Premium weekly",
                                      style: pSemiBold18.copyWith(fontSize: 14),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Including tax and auto-renew",
                                      style: pRegular14.copyWith(fontSize: 10),
                                    )
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                Text(
                                  "\$50",
                                  style: pSemiBold18.copyWith(fontSize: 20),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      // color: ConstColors.whiteColor
                                          // .withOpacity(0.10),
                                          color: Colors.grey
                                    ),
                                    child: Center(
                                      child: Text(
                                        "have a voucher code?",
                                        style:
                                            pRegular14.copyWith(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color(0xffFFAD09),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Apply",
                                        style:
                                            pRegular14.copyWith(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 15),
                            Divider(
                              // color: ConstColors.whiteColor.withOpacity(0.5),
                              color: Colors.grey,
                            ),

                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: pSemiBold18.copyWith(fontSize: 16),
                                ),
                                Text(
                                  "\$ 50",
                                  style: pSemiBold18.copyWith(fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Payment Methods",
                      style: pSemiBold18.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          homeController.isGogle.value = true;
                          homeController.isApple.value = false;
                          homeController.isOther.value = false;
                        });
                      },
                      child: PaymentCard(
                        widget:
                            Image.asset(DefaultImages.google, fit: BoxFit.fill),
                        title: "Google Pay",
                        isSelect: homeController.isGogle.value,
                      ),
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          homeController.isGogle.value = false;
                          homeController.isApple.value = true;
                          homeController.isOther.value = false;
                        });
                      },
                      child: PaymentCard(
                        widget: Image.asset(
                          DefaultImages.apple,
                          fit: BoxFit.fill,
                        ),
                        title: "Apple Pay",
                        isSelect: homeController.isApple.value,
                      ),
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          homeController.isGogle.value = false;
                          homeController.isApple.value = false;
                          homeController.isOther.value = true;
                        });
                      },
                      child: PaymentCard(
                        widget:
                            Image.asset(DefaultImages.card, fit: BoxFit.fill),
                        title: "Other",
                        isSelect: homeController.isOther.value,
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            child: CustomButton(
              width: Get.width,
              text: "Continue payment",
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    content: const SucessDialog(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
