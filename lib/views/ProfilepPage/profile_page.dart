import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/widgets/custom_bottomnavigationbar.dart';
import 'package:traval_app/widgets/custom_button_two.dart';
import 'package:traval_app/widgets/text_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: TextWidget(text: "500 trips",fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center ,
           children: [
            Center(
              child: Container(
                height: 100.h,
                width: 80.w,
                child: Image.asset(DefaultImages.headphoneshomepage)),
            ),
            SizedBox(height: 15.0.h,),
            TextWidget(text: "travelaudioguides1@gmail.com",fontSize: 16.0.sp,color: Colors.black,),
            SizedBox(height: 10.0.h,),
            Align(
              alignment: Alignment.centerLeft,
              
              child: TextWidget(text: "First Name",fontSize: 16.0,color: Colors.black,)),
            SizedBox(height: 5.0,),
            Container(
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    // You can add more decoration properties here if needed
    border: Border.all(
      color: Colors.grey, // Example border color
      width: 1.0, // Example border width
    ),
      ),
      
      child: TextField(
    decoration: InputDecoration(
      hintText: "First Name",
      contentPadding: EdgeInsets.all(10), // Adjust padding as needed
      border: InputBorder.none, // To remove the default border of TextField
    ),
      ),
    ),
    SizedBox(height: 25.0.h,),
    
    Align(
              alignment: Alignment.centerLeft,
              
              child: TextWidget(text: "Family Name",fontSize: 16.0,color: Colors.black,)),
            SizedBox(height: 5.0,),
            Container(
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    // You can add more decoration properties here if needed
    border: Border.all(
      color: Colors.grey, // Example border color
      width: 1.0, // Example border width
    ),
      ),
      
      child: TextField(
    decoration: InputDecoration(
      hintText: "Family Name",
      contentPadding: EdgeInsets.all(10), // Adjust padding as needed
      border: InputBorder.none, // To remove the default border of TextField
    ),
      ),
    ),
    SizedBox(height: 20.0.h,),
    Row(
      children: [
    CustomButtontwo(text: "Cancel", onPressed: (){}, backgroundColor: Colors.grey),
    SizedBox(width: 5.0.w,),
    CustomButtontwo(text: "save changes", onPressed: (){}, backgroundColor: Colors.blue)
      ],
    ),
    
            
           ],
           
           
        
        ),
        
      ),
    );
    
    
    
  }
}