import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:traval_app/views/HelpEmailSupport/help_email_support.dart';
import 'package:traval_app/views/InviteFriendPage/invite_friend_page.dart';
import 'package:traval_app/views/LoginPage/login_page.dart';
import 'package:traval_app/views/PaymentPage/payment_page.dart';
import 'package:traval_app/views/ProfilepPage/profile_page.dart';
import 'package:traval_app/views/SettingsPage/setting_page.dart';
import 'package:traval_app/views/SignoutPage/sign_out_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // final appRoutes = Routes();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Traval App',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // home:  LoginScreen(),
              // home:  ProfilePage(),
              // home: SignOutPage(),
               home:  HelpEmailSuppoert(),
              // home: InviteFriendPage(),
              // home: SettingPage(),
          );

        });
  }
}
