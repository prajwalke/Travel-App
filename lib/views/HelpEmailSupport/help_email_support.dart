import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/widgets/custom_appbar.dart';
import 'package:traval_app/widgets/custom_button_two.dart';
import 'package:traval_app/widgets/text_widget.dart';

class HelpEmailSuppoert extends StatefulWidget {
  const HelpEmailSuppoert({super.key});

  @override
  State<HelpEmailSuppoert> createState() => _HelpEmailSuppoertState();
}

class _HelpEmailSuppoertState extends State<HelpEmailSuppoert> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_rounded),
        title: Center(child: TextWidget(text: "500 trips",fontSize: 18.0.sp,fontWeight: FontWeight.bold,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextWidget(
                text: "How can we help?",
                fontSize: 16.0.sp,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: Center(
                child: TextWidget(
                  text: "You'll find quick answers covering the basics in our FAQ. You can also send an email to support below",
                  fontSize: 12.0,
                ),
              ),
            ),
            SizedBox(height: 20,),
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: 'FAQ'),
                Tab(text: 'Email Support'),
              ],
            ),
            SizedBox(height: 10.0.h,),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // TODO: Add FAQ content here
                  Column(
                    children: [
                      SizedBox(height: 10.0.h,),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(text: "How do VoiceMap tours work?",fontSize: 15.0,fontWeight: FontWeight.bold,),
                          
                          Icon(Icons.add,color: Colors.blue,),
                          
                        ],
                      ),
                      SizedBox(height: 10.0.h,),
                      Divider(),
                      SizedBox(height: 10.0.h,),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(text: "Do i need to follow a route?",fontSize: 15.0,fontWeight: FontWeight.bold,),
                          
                          Icon(Icons.add,color: Colors.blue,),
                          
                        ],
                      ),
                      SizedBox(height: 10.0.h,),
                      Divider(),
                      SizedBox(height: 10.0.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(text: "Can i use tours more than once?",fontSize: 15.0,fontWeight: FontWeight.bold,),
                          
                          Icon(Icons.add,color: Colors.blue,),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: "You can listen to your tours as often as you like using both the VoiceMap app the VoiceMap website Your acess to tours doesn't expire",
                            fontSize: 14.0,),
                          
            //               TextWidget(
            //   text:
            //       "When they sign up and take a tour using your code, you'll get a free tour. You can share your code as many times as you like.",
            //   fontSize: 15.0,
            // ),
                          
                          
                        ],
                      ),
                      SizedBox(height: 10.0.h,),
                      Divider(),
                      SizedBox(height: 10.0.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(text: "Can i listen to tours at home?",fontSize: 15.0.sp,fontWeight: FontWeight.bold,),
                          
                          Icon(Icons.add,color: Colors.blue,),
                          
                        ],
                      ),
                      SizedBox(height: 10.0.h,),
                      Divider(),
                      SizedBox(height: 10.0.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(text: "How do i acess a tour using the VoiceMap app",fontSize: 15.0.sp,fontWeight: FontWeight.bold,),
                          
                          Icon(Icons.add,color: Colors.blue,),
                          
                        ],
                      ),
                      
                    ],
                  ),
                  // TODO: Add Email Support content here
                  Column(
                    children: [
                      Text('Please send support requests, bug reports or general feedback to support@voicemap.me. you can also acess live chat support at voicemap,me during our working hours',style: TextStyle(
                        fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.bold
                      ),
                      
                      ),
                      SizedBox(height: 20.0.h,),
                      // CustomButtontwo(text: "Email Support", onPressed: (){}, backgroundColor: Colors.red)
                      _CustomButton(onPressed: (){}, buttonText: "Email Support"),
                      SizedBox(height: 10.0.h,),
                      TextWidget(text: "How quickly will i get a response?",fontSize: 16.0.sp,fontWeight: FontWeight.bold,color: Colors.black,),
                      SizedBox(height: 10.0.h,),
                      TextWidget(text: "We know you might be waiting to do a tour, and we answer as quickly as possible - sometimes in minutes, and mostly within a few hours, But because we offer tours in over 60 countries, it occasionally takes us longer to emails that need aquick answer.We'll reply to emails that need a quick answer. We'll reply to emails that dont't require priority ssupport within 72 hours.",fontSize: 15.0.sp,),
                      SizedBox(height: 10.0.h,),
                      TextWidget(text: "Please includes as much information as possible in your first email.that way we can reply with a solution instead of follow-on question",fontSize: 15.0.sp,)
                    ],
                  ),
                  
                ],
              ),
              
              
            ),
                      ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _CustomButton({
    required VoidCallback onPressed,
    required String buttonText,
    
  }){
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        fixedSize: MaterialStateProperty.all<Size>(Size(300.0.w, 35.0.h)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

  }

  }

