import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/views/Attraction/attraction_page.dart';
import 'package:traval_app/views/Attraction/pkgtwo.dart';
import 'package:traval_app/views/CheckOutPage/checkout_page.dart';
import 'package:traval_app/views/PaymentPage/payment_page.dart';
import 'package:traval_app/views/SettingsPage/setting_page.dart';
import 'package:traval_app/widgets/custom_bottomnavigationbar.dart';
import 'package:traval_app/widgets/text_widget.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int currentIndex = 0;

  // void onItemTapped(int index) {
  //   setState(() {
  //     currentIndex = index;
  //     // Add logic to handle tab changes here
  //     // You can perform different actions based on the selected tab index
  //   });
  // }

   void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => PaymentScreen()),
          // MaterialPageRoute(builder: (context) => HomeExplorePage)
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchResultPage()),
        );
        break;
        case 2:
        Navigator.push(
          context,
          // MaterialPageRoute(builder: (context) => CartPage()),
          MaterialPageRoute(builder: (context) => ShoppingCartPage()),
        );
        break;
        case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PackageDetailPage()),
        );
        break;
         case 4:
        Navigator.push(
          context,
          // MaterialPageRoute(builder: (context) => PkgTwoPage()),
           MaterialPageRoute(builder: (context) => SettingPage()),
        );
        break;
       

      // Add cases for CartPage, TourCodesPage, and ProfilePage as needed.
    }
  }

  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ConstColors.whiteColor,
//       appBar: AppBar(
//         backgroundColor: ConstColors.primaryColor,
//         title: Text("Shopping Cart",style: TextStyle(
//           fontSize: 16.0.sp,fontWeight: FontWeight.bold
//         ),),
//       ),
      
//       // child: Padding(
//       //   padding: const EdgeInsets.all(8.0),
//         body: Column(
          
//           children: [
//            _buildCardWidget(imageUrl: DefaultImages.france, title: "Chicogo River:1.5 Houre Guided Architecture Cruise ", description: "Chicogo River:1.5 Houre Guided Architecture Cruise"),
//             _buildCardWidget(imageUrl: DefaultImages.Egypt, title: "Chicogo River:1.5 Houre Guided Architecture Cruise ", description: "Chicogo River:1.5 Houre Guided Architecture Cruise " ),
//              _buildCardWidget(imageUrl: DefaultImages.Egypt, title: "Chicogo River:1.5 Houre Guided Architecture Cruise ", description: "Chicogo River:1.5 Houre Guided Architecture Cruise " ),
             
//          ],
         
// ),


    
    
//               bottomNavigationBar: CustomBottomnavigationBar(currentIndex: currentIndex, onItemTapped: onItemTapped),

//       );
//   }

Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: ConstColors.whiteColor,
    appBar: AppBar(
      backgroundColor: ConstColors.primaryColor,
      title: Text(
        "Shopping Cart",
        style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.bold),
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          _buildCardWidget(
            imageUrl: DefaultImages.france,
            title: "Pyramids of Giza",
            description: "20m41s",
          ),
          _buildCardWidget(
            imageUrl: DefaultImages.Egypt,
            title: "Pyramids of Giza",
            description: "20m41s",
          ),
          _buildCardWidget(
            imageUrl: DefaultImages.Egypt,
            title: "Pyramids of Giza",
            description: "20m41s",
          ),
          _buildCardWidget(imageUrl: DefaultImages.Egypt, title: "Pyramids of Giza", description: "20m41s"),
          SizedBox(height: 150,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextWidget(text: '73.31',fontSize: 16.0,color: Colors.black,),
                  TextWidget(text: 'subtotal',fontSize: 12.0,color: Colors.black,)
                ],
              ),
              ElevatedButton(
                      
                      
                      
                      
                      onPressed: (){
                       Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckoutPage()),
          );
                      },
                      style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
          Size(150.0, 40.0), // Set your desired width and height here
              ),
              backgroundColor: MaterialStateProperty.all<Color>(ConstColors.primaryColor),
            ),
                     child: Text("Next",style: TextStyle(
                      color: Colors.black
                      
                    ),)
                    )
          
            ],
          )
        ],
        
      ),
    ),
    
  
    // Wrap the Row inside a widget (e.g., Container, Padding, etc.)
    
    bottomNavigationBar: CustomBottomnavigationBar(
      currentIndex: currentIndex,
      onItemTapped: onItemTapped,
    ),
  );
}


// Widget _buildCardWidget({
//   required String imageUrl,
//   required String title,
//   required String description,
//   // required IconData icon,
// }) {
//   return Card(
//     color: Colors.blue,
//     elevation: 20.0,
//     child: Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Column(
//         children: [

//           Row(

//             children: [
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   shape: BoxShape.rectangle,
//                   image: DecorationImage(
//                     image: NetworkImage(imageUrl),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 16.0),
//               Flexible(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           title,
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                             overflow: TextOverflow.ellipsis
                            
//                           ),
//                         ),
//                         // SizedBox(width: 10.0.w,),
//                         // Icon(icon),
//                       ],
//                     ),
//                     SizedBox(height: 8.0),
//                     Text(
//                       description,
//                       style: TextStyle(fontSize: 16.0),
//                     ),
//                   ],
//                 ),
//               ),
             
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Container(
//                   // height: 100,
//                   // width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.green
//                   ),
//                 )
//               ],
              
//             ),
//           )
            
//               ],
//             ),
//           )
                 
//       );
      
  
  
// }
// }

// Widget _buildCardWidget({
//   required String imageUrl,
//   required String title,
//   required String description,
//   // required IconData icon,
// }) {
//   return Card(
//     color: Colors.blue,
//     elevation: 20.0,
//     child: Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   shape: BoxShape.rectangle,
//                   image: DecorationImage(
//                     image: NetworkImage(imageUrl),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 16.0),
//               Flexible(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           title,
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                         // SizedBox(width: 10.0.w,),
//                         // Icon(icon),
//                       ],
//                     ),
//                     SizedBox(height: 8.0),
//                     Text(
//                       description,
//                       style: TextStyle(fontSize: 16.0),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//                   ],
//       ),
//     ),
    
//   );
  
// }
// }

Widget _buildCardWidget({
  required String imageUrl,
  required String title,
  required String description,
  // required IconData icon,
}) {
  return Column(
    children: [
      Card(
        color: Colors.blue,
        elevation: 20.0,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 100.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            // SizedBox(width: 10.0.w,),
                            // Icon(icon),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          description,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Add the following Container after the Card
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 25.0.h,
              width: 80.0.w,
              // width: double.infinity, // Set width to fill the available space
              decoration: BoxDecoration(
                color: Colors.blue, // Customize the color as needed
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: // Add any child widgets inside the Container if needed
                  Text(
                "Attraction",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 5.w,),
            Container(
              
              height: 25.0.h,
              width: 80.0.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                
              ),
               child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(Icons.minimize),
      SizedBox(width: 8.0), // Add some space between the icon and text
      Text(
        '2',
        style: TextStyle(
          color: Colors.white,
          // Add any additional text styling as needed
        ),
      ),
      Icon(Icons.minimize), // Add another icon if needed
    ],
  ),

        
              
              
              
              
            ),
            SizedBox(width: 5.0.w,),
            Container(
              height: 25.0.h,
              width: 80.0.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(width: 5.0.w,),
            Container(
              height: 25.0.h,
              width: 60.0.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("25",style: TextStyle(
                fontSize: 16.0.sp
              ),)
            ),
          ]
            
              
            ),
      )
          ],
        
      
      // Container(
      //   height: 20.0,
      //   width: 50.0,
      //   // width: double.infinity, // Set width to fill the available space
      //   decoration: BoxDecoration(
      //     color: Colors.red, // Customize the color as needed
      //     borderRadius: BorderRadius.circular(10.0),
      //   ),
      //   child: // Add any child widgets inside the Container if needed
      //       Text(
      //     "This is a container below the card",
      //     style: TextStyle(
      //       fontSize: 16.0,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),

    
  );
}
}