import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/widgets/custom_button_two.dart';
import 'package:traval_app/widgets/text_widget.dart';

class SignOutPage extends StatefulWidget {
  const SignOutPage({super.key});

  @override
  State<SignOutPage> createState() => _SignOutPageState();
}

class _SignOutPageState extends State<SignOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
       
        title: Center(child: TextWidget(text: "500 trips",fontSize: 16.0,fontWeight: FontWeight.bold,)),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
      height: 180.0.h,
      width: 500.0.w,
      child: Image.asset(
        DefaultImages.Egypt,
        fit: BoxFit.cover, // Adjust the fit based on your requirements
      ),
    ),
    SizedBox(height: 20.0),
          TextWidget(
            text:
                "Signing out deletes the tours downloaded to this device",
            fontSize: 18.0,fontWeight: FontWeight.bold,
          ),
    
          SizedBox(height: 20.0),
          
          
          TextWidget(
            
            text:
                "You'll still have acess them through your VoiceMap Library, but you'll need to download them again when you sign back into the app",
            fontSize: 15.0,color: Colors.grey,
          ),
          SizedBox(height: 20.0,),
          TextWidget(text: "VoiceMap doesn't track your location unless you are using the app,you'll find more information about that here",fontSize: 15.0,color: Colors.grey,),
          
    
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     // TextWidget(text: '''Signing out deletes the tours downloaded to this device''',fontSize: 16.0,fontWeight: FontWeight.bold,)
    //     Text("Signing out deletes the tours downloaded to this device",style: TextStyle(
    //       fontSize: 16.0.sp
    //     ),)
    //   ],
    // ),
    // TextWidget(text: "Signing out deletes the tours downloaded to this device "),
    // SizedBox(height: 5.0.h,),
    // Row(
    //   children: [
    //     Icon(Icons.lock),
    //     SizedBox(width: 5.0.w,),
    //     Text("You'll still have acess them through your VoiceMap Library, but you'll need to download them again when you sign back into the app")
    //      ],
    // ),
    // SizedBox(height: 5.0.h,),
    // Row(
    //   children: [
    //     Icon(Icons.lock),
    //     SizedBox(width: 5.0.w,),
    //     Text("You'll still have acess them through your VoiceMap Library, but you'll need to download them again when you sign back into the app")
    //      ],
    // ),
     SizedBox(height: 10.0.h,),
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
        CustomButtontwo(text: "Cancel", onPressed: (){}, backgroundColor: Colors.blue),
        // SizedBox(height: 5.0.h,),
        CustomButtontwo(text: "Sign Out", onPressed: (){}, backgroundColor:Colors.red)
      ],
    )
    
    
          ],
        
        ),
      ),
    );
  }
}