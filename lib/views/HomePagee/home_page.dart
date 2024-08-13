//sauri
import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/views/Attraction/attraction_page.dart';
import 'package:traval_app/views/Attraction/pkgtwo.dart';
import 'package:traval_app/views/HomeExplorePage/homeexplore_page.dart';
import 'package:traval_app/views/PaymentPage/payment_page.dart';
import 'package:traval_app/views/SearchPage/search_page.dart';
import 'package:traval_app/views/SettingsPage/setting_page.dart';
import 'package:traval_app/views/ShoppingPage/shopping_cart_page.dart';
import 'package:traval_app/widgets/custom_appbar.dart';
import 'package:traval_app/widgets/custom_bottomnavigationbar.dart';
import 'package:traval_app/widgets/custom_card.dart';
import 'package:traval_app/widgets/custom_searchbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController searchController = TextEditingController();
  // int _selectedIndex = 0;

  // static List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Home Page',
  //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  //   ),
  //   Text(
  //     'Explore Page',
  //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  //   ),
  // ];

  // // void _onItemTapped(int index) {
  // //   setState(() {
  // //     _selectedIndex = index;
  // //   });
  // // }
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;

  //     if (index == 1) {
  //       // Navigate to the Explore page only if the index is 0
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => HomeExplorePage()),
  //       );
  //     }
  //   });
  // }

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
          // MaterialPageRoute(builder: (context) => PaymentScreen()),
          MaterialPageRoute(builder: (context) => HomeExplorePage())
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
                CustomCardWidget(
                    title: 'Egypt',
                    description:
                        'Even during the daytime a troll cave is dark because the trolls',
                    imageUrl: DefaultImages.Egypt),
                CustomCardWidget(
                    title: 'France',
                    description:
                        'Below the snowlines,caradras is described as having dull red',
                    imageUrl: DefaultImages.france),
                CustomCardWidget(
                    title: 'Itely',
                    description:
                        'Below the snowline caradras is described as having dull red slope',
                    imageUrl: DefaultImages.itely)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomnavigationBar(currentIndex: currentIndex, onItemTapped: onItemTapped),
    );
  }
}
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.library_music),
//             label: 'Explore',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.teal,
//         unselectedItemColor: Colors.white,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
