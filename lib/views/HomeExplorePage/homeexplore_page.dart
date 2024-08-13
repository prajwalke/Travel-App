import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/views/Attraction/attraction_page.dart';
import 'package:traval_app/views/Attraction/attractionnew_page.dart';
import 'package:traval_app/views/Attraction/pkg1.dart';
import 'package:traval_app/views/Attraction/pkgtwo.dart';
import 'package:traval_app/views/CheckOutPage/checkout_page.dart';
import 'package:traval_app/views/PaymentPage/payment_page.dart';
import 'package:traval_app/views/SearchPage/search_page.dart';
import 'package:traval_app/views/SettingsPage/setting_page.dart';
import 'package:traval_app/views/ShoppingPage/shopping_cart_page.dart';
import 'package:traval_app/widgets/custom_appbar.dart';
import 'package:traval_app/widgets/custom_bottomnavigationbar.dart';
import 'package:traval_app/widgets/custom_card.dart';
import 'package:traval_app/widgets/custom_searchbar.dart';
import 'package:traval_app/widgets/text_widget.dart';

class HomeExplorePage extends StatefulWidget {
  @override
  _HomeExplorePageState createState() => _HomeExplorePageState();
}

class _HomeExplorePageState extends State<HomeExplorePage> {
    final TextEditingController searchController = TextEditingController();

  // int _selectedIndex = 0;

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
          // MaterialPageRoute(builder: (context) => PackageDetailPage()),
          MaterialPageRoute(builder: (context) => CheckoutPage())
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteColor,
      
            appBar: CustomAppBar(),
       body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image:
          //         AssetImage(DefaultImages.headphoneshomepage), // Add your background image path
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),

                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Container(
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(15),
                        //           color: Colors.white,
                        //         ),
                        //         child: TextField(
                        //           decoration: InputDecoration(
                        //             hintText: 'Search for destination',
                        //             border: OutlineInputBorder(
                        //               borderRadius: BorderRadius.circular(10),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     SizedBox(width: 10),
                        //     Container(
                        //       decoration: BoxDecoration(
                        //         // color: Colors.tealAccent[100],
                        //         color: ConstColors.primaryColor ,
                        //         borderRadius: BorderRadius.circular(10),
                        //       ),
                        //       child: IconButton(
                        //         icon: Icon(Icons.search),
                        //         onPressed: () {
                        //           // Use Navigator to navigate to the SearchBarPage
                        //           Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //                 builder: (context) => SearchBarPage()),
                        //           );
                        //         },
                        //       ),
                        //     ),
                        //   ],
                        // )
                        CustomSearchBar(
                          controller: searchController,
                        )
                      ]),
                ),

        // child: Container(
        //   // decoration: BoxDecoration(
        //   //   image: DecorationImage(
        //   //     image:
        //   //         AssetImage(DefaultImages.headphoneshomepage), // Add your background image path
        //   //     fit: BoxFit.cover,
        //   //   ),
        //   // ),
        //   child: Center(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         SizedBox(
        //           height: 5,
        //         ),
        //         Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               SizedBox(
        //                 height: 5,
        //               ),
                      
        //               Row(
        //                 children: [
        //                   Expanded(
        //                     child: Container(
        //                       decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(15),
        //                         color: Colors.white,
        //                       ),
        //                       child: TextField(
        //                         decoration: InputDecoration(
        //                           hintText: 'Search for destination',
        //                           border: OutlineInputBorder(
        //                             borderRadius: BorderRadius.circular(10),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                    SizedBox(width: 5),
        //                   Container(
        //                     decoration: BoxDecoration(
        //                       // color: Colors.tealAccent[100],
        //                       color: ConstColors.primaryColor ,
        //                       borderRadius: BorderRadius.circular(10),
        //                     ),
        //                     child: IconButton(
        //                       icon: Icon(Icons.search),
        //                       onPressed: () {
        //                         // Use Navigator to navigate to the SearchBarPage
        //                         Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) => SearchBarPage()),
        //                         );
        //                       },
        //                     ),
        //                   ),
        //                 ],
        //               )
        //             ]),
                    
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextWidget(text: 'Egypt Trip',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,),
                            )
                          ],
                        ),
            
                CustomCardWidget(title: 'Egypt', description: 'Even during the daytime a troll cave is dark because the trolls', imageUrl: DefaultImages.headphoneshomepage),
                //  CustomCardWidget(title: 'France', description: 'Below the snowlines,caradras is described as having dull red', imageUrl: DefaultImages.headphoneshomepage),
                CustomCardWidget(title: 'Itely', description: 'Below the snowline caradras is described as having dull red slope', imageUrl: DefaultImages.natureehomepage)
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: CustomBottomnavigationBar(
        // backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onItemTapped: onItemTapped,
      ),
     
      
    );
  }
}
