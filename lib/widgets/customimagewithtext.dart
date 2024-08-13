import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImagewithText extends StatelessWidget {
  final String label;
  final String image;

  const CustomImagewithText({
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Add onTap functionality here
          },
          child: Container(
            width: 150.w,
            height: 160.h,
            decoration: BoxDecoration(
            
              
              
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black,),
            
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}