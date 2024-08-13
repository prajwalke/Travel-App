import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/widgets/custom_bottomnavigationbar.dart';
import 'package:traval_app/widgets/text_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteColor,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        backgroundColor: ConstColors.primaryColor,
        title: Center(child: Text("500 trips")),
        
      ),
      body:  Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_2_rounded),
                
                SizedBox(
                  width: 15.0,
                ),
                TextWidget(
                  text: "travalaudioguides@gmail.com",
                  
                  fontSize: 15.0,
                ),
               

                SizedBox(height: 10.0),
               
              ],
            ),
            SizedBox(height: 20,),
            Divider(color: Colors.grey,),
            SizedBox(height: 20,),
            _buildIconTextRow(firstIcon: Icons.help_center_sharp, text: "Profile", secondIcon: Icons.arrow_back_ios),
            SizedBox(height: 20,),
            Divider(color: Colors.grey,),
            SizedBox(height: 20,),
            _buildIconTextRow(firstIcon: Icons.voice_over_off_rounded, text: "Help", secondIcon: Icons.arrow_back_ios),
            SizedBox(height: 20,),
            Divider(color: Colors.grey,),
            SizedBox(height: 20,),

            _buildIconTextRow(firstIcon: Icons.person, text: "About 500 trips", secondIcon: Icons.arrow_back_ios),
            SizedBox(height: 20,),
            Divider(color: Colors.grey,),
            SizedBox(height: 20,),
            _buildIconTextRow(firstIcon: Icons.person, text: "Invite", secondIcon: Icons.arrow_back_ios),
            SizedBox(height: 20),
             Divider(color: Colors.grey,),
            SizedBox(height: 20,),

            _buildIconTextRow(firstIcon: Icons.person, text: "Sign Out", secondIcon: Icons.arrow_back_ios),

          ],
        ),
      ),

      // bottomNavigationBar: CustomBottomnavigationBar(currentIndex: currentIndex, onItemTapped: (){}),
      
    
    );
  }

//   Widget _buildIconTextRow({
//     required IconData firstIcon,
//     required String text,
//     required IconData secondIcon,
//   }) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
        
//         Icon(firstIcon),
        
//         const SizedBox(width: 8.0),
//         Text(text),
//         const SizedBox(width: 8.0),
//         Icon(secondIcon),
//       ],
//     );
//   }
// }

Widget _buildIconTextRow({
  required IconData firstIcon,
  required String text,
  required IconData secondIcon,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Icon(firstIcon),
           SizedBox(width: 15.w),
          Text(text,style: TextStyle(
            fontSize: 16.0,fontWeight: FontWeight.bold
          ),),
        ],
      ),
      Icon(secondIcon),
    ],
  );
}
}
