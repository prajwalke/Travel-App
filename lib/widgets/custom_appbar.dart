import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/widgets/text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: ConstColors.Appbarbackgroundcolor,
      backgroundColor: ConstColors.primaryColor,

      automaticallyImplyLeading: false, // Set to false to remove the back arrow
      title: Center(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu,color: Colors.white,),
              onPressed: () {
                // Handle menu button press
              },
            ),
            Spacer(),
            SizedBox(width: 8.0), // Add some spacing between menu icon and text
            TextWidget(
              text: 'Crumbal',
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: ConstColors.whiteColor,
              
            ),
            Spacer()
            // You can also use TextWidget for other text elements if needed
          ],
        ),
        
      ),
      
      actions: [
        // IconButton(
        //   icon: Icon(Icons.account_circle,color: Colors.white,),
        //   onPressed: () {
        //     // Handle profile icon press
        //   },
        // ),
        IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'), // Add your own image path
            ),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
      ],
    );
  }
}
