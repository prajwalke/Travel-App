import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/widgets/text_widget.dart';

class InviteFriendPage extends StatefulWidget {
  const InviteFriendPage({Key? key}) : super(key: key);

  @override
  State<InviteFriendPage> createState() => _InviteFriendPageState();
}

class _InviteFriendPageState extends State<InviteFriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Center(
          child: TextWidget(
            text: "500 trips",
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TextWidget(
                text: "Invite Friends",
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25.0),
            Center(
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Image.asset(
                  DefaultImages.Invitefriend,
                ),
              ),
            ),
            SizedBox(height: 25.0.h),
            Center(
              child: TextWidget(
                text: "Get Free tours by sharing VoiceMap with friends",
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextWidget(
              text:
                  "When they sign up and take a tour using your code, you'll get a free tour. You can share your code as many times as you like.",
              fontSize: 15.0,
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: TextWidget(
                text: "Your Code",
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200.0.w,
                  height: 40.0.h,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // IconButton(
                      //   icon: Icon(Icons.content_copy),
                      //   onPressed: () {
                      //     // Add your copy logic here
                      //   },
                      // ),
                    ],
                  ),
                  // child: TextField(
                  //   decoration: InputDecoration(
                  //     hintText: 'Enter text...',
                  //   ),
                  // ),
                ),
                // Container(
                //   height: 50,
                //   width: 100,
                //   color: Colors.blue,
                //   child: Center(
                //     child: Text(
                //       'Button 1',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // ),
                // Container(
                //   height: 40.0.h,
                //   width: .0.w,
                //   color: Colors.green,
                //   child: Center(
                //     child: Text(
                //       'Button 2',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // ),
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: Size(120, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons
                            .share, // Replace 'your_icon' with the desired icon
                        color: Colors.white,
                      ),
                      SizedBox(
                          width:
                              8.0), // Adjust the spacing between icon and text as needed
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
