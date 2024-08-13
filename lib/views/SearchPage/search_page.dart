import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/widgets/customimagewithtext.dart';
import 'package:traval_app/widgets/text_widget.dart';

class SearchBarPage extends StatefulWidget {
  @override
  _SearchBarPageState createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: ConstColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                
                
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.close),
                          SizedBox(width: 5,),
                          TextWidget(
                            text: "Filter",
                            fontSize: 15.0.sp,
                            
                           
                          ),
                          SizedBox(width: 5,),
                          TextWidget(
                        text: "Clear All",
                        fontSize: 15.0.sp,
                        
                       
                      ),
                        ],
                      ),
                      
                      SizedBox(height: 8.0),

                   Row(
                    children: [
                     
                    
                    
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.search, color: Colors.grey),
                                ),
                                // SizedBox(width: 8.0),
                                Expanded(
                                  child: TextField(
                                    controller: searchController,
                                    decoration: InputDecoration(
                                      hintText: 'Search for a destination...',
                                      border: InputBorder.none,
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          // Perform navigation here
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SearchBarPage(),
                                            ),
                                          );
                                        },
                                        
                                        child: Icon(Icons.close,),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                    ]
                ),
              ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.location_city),
                  SizedBox(width: 5,),
                  TextWidget(text: 'Egyptian Museum',fontSize: 15.0,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.location_city),
                  SizedBox(width: 5,),
                  TextWidget(text: 'Luxor Museum',fontSize: 15.0,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.location_city),
                  SizedBox(width: 5,),
                  TextWidget(text: 'Mummification Museum',fontSize: 15.0,)
                ],
              ),
              
              SizedBox(
                height: 100.h,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: "Popular Cities",
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              // Additional Rows can be added here
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomImagewithText(
                        label: 'Cario', image: DefaultImages.cario),
                    SizedBox(
                      width: 10.0,
                    ),
                    CustomImagewithText(
                        label: 'Luxor', image: DefaultImages.cario),
                    SizedBox(
                      width: 10.0,
                    ),
                    CustomImagewithText(
                        label: 'Aswan', image: DefaultImages.cario),
                    SizedBox(width: 10.0),
                    CustomImagewithText(
                        label: 'Alexandria', image: DefaultImages.cario),
                    SizedBox(
                      width: 10.0,
                    ),
                    CustomImagewithText(
                        label: 'Sharm', image: DefaultImages.cario),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: "Popular Categories",
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0.h),
              // Additional Rows can be added here
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CustomImagewithText(
                        label: 'Top 20', image: DefaultImages.cario),
                    SizedBox(
                      width: 10.0,
                    ),
                    const CustomImagewithText(
                        label: 'Architecture', image: DefaultImages.cario),
                    SizedBox(
                      width: 10.0,
                    ),
                    const CustomImagewithText(
                        label: 'Parks', image: DefaultImages.cario),
                    SizedBox(width: 10.0),
                    const CustomImagewithText(
                        label: 'Family Friendly', image: DefaultImages.cario),
                    SizedBox(
                      height: 10.0.w,
                    ),
                    CustomImagewithText(
                        label: 'Hiking', image: DefaultImages.cario),
                  ],
                ),
              ),
            ]
              ),
        ),
            
          ),
        
      
    );
  }
}
