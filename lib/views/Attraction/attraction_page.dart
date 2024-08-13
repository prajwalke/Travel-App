// import 'package:flutter/material.dart';
// import 'package:traval_app/constants/app_colors.dart';
// import 'package:traval_app/views/Attraction/attractionnew_page.dart';

// class SearchResultPage extends StatefulWidget {
//   const SearchResultPage({Key? key}) : super(key: key);

//   @override
//   State<SearchResultPage> createState() => _SearchResultPageState();
// }

// class _SearchResultPageState extends State<SearchResultPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                   color: ConstColors.primaryColor),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(28.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Eqypt",
//                           style: TextStyle(fontSize: 30.0),
//                         ),
//                         Icon(Icons.crop_square_sharp)
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30.0)),
//                           hintText: 'Enter a search term',
//                           suffixIcon: Icon(Icons.sort)),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                           child: Container(
//                             height: 30,
//                             width: 70,
//                             decoration: BoxDecoration(
//                               border: Border.all(),
//                               borderRadius: BorderRadius.circular(20.0),
//                               color: Colors.white,
//                             ),
//                             child: Row(
//                               children: [
//                                 Text("Cairo"),
//                                 Icon(Icons.crop_square_sharp)
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             // Container(
//             //     height: 70,
//             //     width: MediaQuery.of(context).size.width,
//             //     decoration: BoxDecoration(
//             //         color: Colors.white,
//             //         border: Border.all(color: Colors.lightBlueAccent)),
//             //     child: Center(
//             //       child: Stack(
//             //         children: [
//             //           Container(
//             //             height: 50,
//             //             width: MediaQuery.of(context).size.width,
//             //             decoration: BoxDecoration(
//             //                 color: Colors.white,
//             //                 border: Border.all(color: Colors.lightBlueAccent)),
//             //             child: Padding(
//             //               padding: const EdgeInsets.all(8.0),
//             //               child: Column(
//             //                 crossAxisAlignment: CrossAxisAlignment.start,
//             //                 mainAxisAlignment: MainAxisAlignment.start,
//             //                 children: [
//             //                   Text(
//             //                     "Pyramids of Giza",
//             //                     style: TextStyle(fontWeight: FontWeight.w500),
//             //                   ),
//             //                   Text(
//             //                     "20m41s",
//             //                     style: TextStyle(color: Colors.grey),
//             //                   ),
//             //                 ],
//             //               ),
//             //             ),
//             //           ),
//             //           Positioned(
//             //               left: 250,
//             //               height: 70,
//             //               child: Container(
//             //                 height: 70,
//             //                 width: 70,
//             //                 decoration:
//             //                     BoxDecoration(color: Colors.lightBlueAccent),
//             //               ))
//             //         ],
//             //       ),
//             //     ))

//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       top: 10,
//                       child: Container(
//                         height: 85,
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(color: Colors.lightBlueAccent)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               // Text(
//                               //     "Pyramids of Giza",
//                               //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
//                               // ),
//                               // Text(
//                               //   "20m41s",
//                               //   style: TextStyle(color: Colors.grey, fontSize: 15.0),
//                               // ),
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => CartPage()),
//                                   );
//                                 },
//                                 child: Text(
//                                   "Pyramids of Giza",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 20.0),
//                                 ),
//                               ),
//                               Text(
//                                 "20m41s",
//                                 style: TextStyle(
//                                     color: Colors.grey, fontSize: 15.0),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 18,
//                       left: 320,
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 30,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(15.0)),
//                                 color: Colors.lightBlueAccent),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             height: 30,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(15.0)),
//                                 color: Colors.lightBlueAccent),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       left: 250,
//                       height: 105,
//                       child: Container(
//                         width: 105,
//                         decoration: BoxDecoration(
//                           color: Colors.lightBlueAccent,
//                           borderRadius: BorderRadius.circular(10.0),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey
//                                   .withOpacity(0.5), // Color of the shadow
//                               spreadRadius: 5, // Spread radius
//                               blurRadius: 7, // Blur radius
//                               offset:
//                                   Offset(0, 3), // Offset in x and y directions
//                             ),
//                           ],
//                         ),
//                         child: Center(
//                             child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               "8\$",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w700, fontSize: 20.0),
//                             ),
//                             Text(
//                               "per device",
//                               style: TextStyle(),
//                             ),
//                           ],
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       top: 10,
//                       child: Container(
//                         height: 85,
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(color: Colors.lightBlueAccent)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Pyramids of Giza",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 20.0),
//                               ),
//                               Text(
//                                 "20m41s",
//                                 style: TextStyle(
//                                     color: Colors.grey, fontSize: 15.0),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 18,
//                       left: 320,
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 30,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(15.0)),
//                                 color: Colors.lightBlueAccent),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             height: 30,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(15.0)),
//                                 color: Colors.lightBlueAccent),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       left: 250,
//                       height: 105,
//                       child: Container(
//                         width: 105,
//                         decoration: BoxDecoration(
//                           color: Colors.lightBlueAccent,
//                           borderRadius: BorderRadius.circular(10.0),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey
//                                   .withOpacity(0.5), // Color of the shadow
//                               spreadRadius: 5, // Spread radius
//                               blurRadius: 7, // Blur radius
//                               offset:
//                                   Offset(0, 3), // Offset in x and y directions
//                             ),
//                           ],
//                         ),
//                         child: Center(
//                             child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               "8\$",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w700, fontSize: 20.0),
//                             ),
//                             Text(
//                               "per device",
//                               style: TextStyle(),
//                             ),
//                           ],
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       top: 10,
//                       child: Container(
//                         height: 85,
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(color: Colors.lightBlueAccent)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Pyramids of Giza",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 20.0),
//                               ),
//                               Text(
//                                 "20m41s",
//                                 style: TextStyle(
//                                     color: Colors.grey, fontSize: 15.0),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 18,
//                       left: 320,
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 30,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(15.0)),
//                                 color: Colors.lightBlueAccent),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             height: 30,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(15.0)),
//                                 color: Colors.lightBlueAccent),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       left: 250,
//                       height: 105,
//                       child: Container(
//                         width: 105,
//                         decoration: BoxDecoration(
//                           color: Colors.lightBlueAccent,
//                           borderRadius: BorderRadius.circular(10.0),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey
//                                   .withOpacity(0.5), // Color of the shadow
//                               spreadRadius: 5, // Spread radius
//                               blurRadius: 7, // Blur radius
//                               offset:
//                                   Offset(0, 3), // Offset in x and y directions
//                             ),
//                           ],
//                         ),
//                         child: Center(
//                             child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               "8\$",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w700, fontSize: 20.0),
//                             ),
//                             Text(
//                               "per device",
//                               style: TextStyle(),
//                             ),
//                           ],
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/views/Attraction/pkg1.dart';
import 'package:traval_app/views/SearchPage/search_page.dart';
import 'package:traval_app/widgets/text_widget.dart';




class SearchResultPage extends StatefulWidget {
  @override
  _SearchResultPageState createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
    TextEditingController searchController = TextEditingController();


  @override
  // void initState() {
  //   super.initState();
  //    _tabController = TabController(length: 4, vsync: this, initialIndex: 0); // Adjust the length as needed
  // }
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);

    // Add listener to handle tab changes
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        // Tab is changing
        if (_tabController.index == 1) {
          // Navigate to PackagesPage when "Packages" tab is selected
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PackagesPage()),
          );
        }
        // Add similar conditions for other tabs if needed
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Scaffold(
    //     backgroundColor: ConstColors.whiteColor,
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           Container(
    //             height: 140.h,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Colors.blue,
    //             ),
                
    //           ),
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
                
                
                
                child: SizedBox(
                  height: 10,
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
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //     builder: (context) =>
                                            //         SearchBarPage(),
                                            //   ),
                                            // );
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
              ),
          
              SizedBox(height: 20.h), // Add spacing between Container and TabBar
              Row(
                children: [
                  Expanded(
                    child: TabBar(
                      controller: _tabController,
                      tabs: [
                        Tab(text: 'Attraction',),
                        Tab(text: 'Packages'),
                        Tab(text: 'Games'),
                        Tab(text: 'Special',),
                      ],
                      indicatorColor: Colors.white, // Customize indicator color
                      labelColor: Colors.black, // Customize selected label color
                      unselectedLabelColor:
                          Colors.grey, // Customize unselected label color
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              _buildContainer(title: 'Pyramids of Giza', description: '21m40s'),
              SizedBox(height: 5,),
          _buildContainer(title: 'Pyramids of Giza', description: '21m40s'),
          SizedBox(height: 5,),
          _buildContainer(title: 'Pyramids of Giza', description: '21m40s')
              
             
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildContainer({
  required String title,
  required String description,
}) {
  // return Card(
  //   color: Colors.grey,
  //   elevation: 20.0,
  //   child: Row(
  //     children: [
  //       Container(
  //         width: 100.0,
  //         height: 80.0,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10.0),
  //           shape: BoxShape.rectangle,
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
              
              
  //             children: [
  //               Text(
  //                 title,
  //                 style: const TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 10.0,
  //                   color: Colors.black,
                    
  //                 ),
  //               ),
  //               SizedBox(height: 8.0),
  //               Text(
  //                 description,
  //                 style: const TextStyle(
  //                   fontSize: 14.0,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //                             ],
  //           ),
            
          
  //         ),
          
  //       ),
  //       // SizedBox(height: 100,),
        
  //       // Container(height: 120,width: 120,color: Colors.black,)

  //     ],
  //   ),
  // );

  // return Container(
  //              height: 70,
  //               width: MediaQuery.of(context).size.width,
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                    border: Border.all(color: Colors.lightBlueAccent)),
  //                child: Center(
  //                  child: Stack(
  //                    children: [
  //                      Container(
  //                        height: 50,
  //                       width: MediaQuery.of(context).size.width,
  //                        decoration: BoxDecoration(
  //                            color: Colors.white,
  //                           border: Border.all(color: Colors.lightBlueAccent)),
  //                       child: Padding(
  //                          padding: const EdgeInsets.all(8.0),
  //                          child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           mainAxisAlignment: MainAxisAlignment.start,
  //                            children: [
  //                              Text(
  //                               // "Pyramids of Giza",
  //                               title,
  //                               style: TextStyle(fontWeight: FontWeight.w500),
  //                              ),
  //                              Text(
  //                                description,
  //                                style: TextStyle(color: Colors.grey),
  //                             ),
  //                           ],
  //                          ),
  //                        ),
  //                      ),
  //                     //  Positioned(
  //                     //      left: 250,
  //                     //      height: 70,
  //                     //      child: Container(
  //                     //        height: 70,
  //                     //        width: 70,
  //                     //       decoration:
  //                     //            BoxDecoration(color: Colors.lightBlueAccent),
  //                     //      ))
  //                   ],
  //                 ),
  //               ));



  return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 85,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.lightBlueAccent)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pyramids of Giza",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "20m41s",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     Positioned(
                      left: 250,
                      height: 105,
                      child: Container(
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.5), // Color of the shadow
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset:
                                  Offset(0, 3), // Offset in x and y directions
                            ),
                          ],
                        ),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "8\$",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20.0),
                            ),
                            Text(
                              "per device",
                              style: TextStyle(),
                            ),
                          ],
                        )),
                      ),
                    ),
                    // Positioned(
                    //   top: 18,
                    //   left: 320,
                    //   child: Column(
                    //     children: [
                    //       Container(
                    //         height: 30,
                    //         width: 70,
                    //         decoration: BoxDecoration(
                    //             borderRadius:
                    //                 BorderRadius.all(Radius.circular(15.0)),
                    //             color: Colors.lightBlueAccent),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Container(),
                    //             Padding(
                    //               padding: const EdgeInsets.only(right: 8.0),
                    //               child: Icon(
                    //                 Icons.add,
                    //                 color: Colors.white,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          // Container(
                          //   height: 30,
                          //   width: 70,
                          //   decoration: BoxDecoration(
                          //       borderRadius:
                          //           BorderRadius.all(Radius.circular(15.0)),
                          //       color: Colors.lightBlueAccent),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Container(),
                          //       Padding(
                          //         padding: const EdgeInsets.only(right: 8.0),
                          //         child: Icon(
                          //           Icons.add,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                  ]
                      )
                     )
                        
                      );
                  
                  
                
              
                    

}
      
    
    

  }

