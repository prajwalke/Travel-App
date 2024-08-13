// ignore_for_file: unused_field, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';

class PackageDetailPage extends StatefulWidget {
  @override
  _PackageDetailPageState createState() => _PackageDetailPageState();
}

class _PackageDetailPageState extends State<PackageDetailPage> {
  String? _selectedLanguage;

  final List<String> _availableLanguages = [
    'English',
    'Spanish',
    'French',
    'German'
  ];

  Widget _buildAttractionBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, 
          // color: Color.fromARGB(255, 104, 231, 231)
          color: Colors.blue,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteColor,
      appBar: AppBar(
        title: Text('Package Two'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context); // Close action to navigate back
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              width: 300,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    "https://www.travelandleisure.com/thmb/deOyUeJ_AjSN7tKUxU1inWWViNQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/giza-pyramid-EGYPTSECRETS1016-617b2b1b23dd4fd38bc9f365af7235ab.jpg",
                    scale: 1.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Full Egypt Package',
                          style: TextStyle(
                            fontSize: 25.0,
                            // color: Color.fromARGB(255, 104, 231, 231),
                            color: ConstColors.primaryColor
                            
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            'Discover the wonders of Egypt with our comprehensive audio guide. Immerse yourself in the history and culture of Egypt through a series of 12 short audios. Explore ancient pyramids, majestic temples, and enjoy each attraction like never before.',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available Languages:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add functionality to select language
                    },
                    icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                    label: Text(
                      'English',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      // primary: Color.fromARGB(255, 104, 231, 231),
                      backgroundColor: ConstColors.primaryColor,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.black,
              color: ConstColors.primaryColor,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'About Egypt.',
                style: TextStyle(
                  fontSize: 16.0,
                  // color: Color.fromARGB(255, 104, 231, 231),
                 color: Colors.black
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  _buildAttractionBulletPoint(
                      'Famous kings and queens - Tutankhamen'),
                  _buildAttractionBulletPoint('Egyptian Writing'),
                  _buildAttractionBulletPoint(
                      'Egyptian calendar and astronomy'),
                  _buildAttractionBulletPoint('Egyptian Culture'),
                  _buildAttractionBulletPoint('Cairo Tour - Egyptian Museum'),
                  _buildAttractionBulletPoint('Luxor Tour - Luxor Temple'),
                  _buildAttractionBulletPoint('Luxor Tour - Valley of Kings'),
                  _buildAttractionBulletPoint('Luxor Tour - Karnak Temple'),
                  _buildAttractionBulletPoint('Tour - Kom Ombo Temple'),
                  _buildAttractionBulletPoint('Tour - Edfu - Temple of Horus'),
                  _buildAttractionBulletPoint('Tour - Esna'),
                  _buildAttractionBulletPoint('Abu Simbel Tour - Twin Towers'),
                ],
              ),
            ),
            Container(
              // color: Colors.black,
              color: ConstColors.primaryColor,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Attractiona.',
                style: TextStyle(
                  fontSize: 16.0,
                  // color: Color.fromARGB(255, 104, 231, 231),
                  // color: ConstColors.primaryColor
                  color: Colors.black
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  _buildAttractionBulletPoint(
                      'Famous kings and queens - Tutankhamen'),
                  _buildAttractionBulletPoint('Egyptian Writing'),
                  _buildAttractionBulletPoint(
                      'Egyptian calendar and astronomy'),
                  _buildAttractionBulletPoint('Egyptian Culture'),
                  _buildAttractionBulletPoint('Cairo Tour - Egyptian Museum'),
                  _buildAttractionBulletPoint('Luxor Tour - Luxor Temple'),
                  _buildAttractionBulletPoint('Luxor Tour - Valley of Kings'),
                  _buildAttractionBulletPoint('Luxor Tour - Karnak Temple'),
                  _buildAttractionBulletPoint('Tour - Kom Ombo Temple'),
                  _buildAttractionBulletPoint('Tour - Edfu - Temple of Horus'),
                  _buildAttractionBulletPoint('Tour - Esna'),
                  _buildAttractionBulletPoint('Abu Simbel Tour - Twin Towers'),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              // color: Colors.black,
              color: ConstColors.primaryColor,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Games.',
                style: TextStyle(
                  fontSize: 16.0,
                  // color: Color.fromARGB(255, 104, 231, 231),
                  // color: ConstColors.primaryColor
                  color: Colors.black
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Icon(Icons.star,
                                  // color: Color.fromARGB(255, 104, 231, 231)
                                  color: Colors.blue,
                                  ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Great Experience at an awesome price',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Cassie - 28 days ago',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "We are so happy that we bought this package. If you really want to live the history and culture of Egypt, buy this. You won't regret it.",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Icon(Icons.star,
                                  // color: Color.fromARGB(255, 104, 231, 231)
                                  color: Colors.blue,
                                  ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Worth every penny !!!',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Cassie - 28 days ago',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "We are so happy that we bought this package. If you really want to live the history and culture of Egypt, buy this. You won't regret it.",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Read more',
                              style: TextStyle(
                                fontSize: 14.0,
                                // color: Color.fromARGB(255, 104, 231, 231),
                                color: ConstColors.primaryColor
                              ),
                            ),
                            Center(
                              child: Icon(Icons.arrow_drop_down,
                                  // color: Color.fromARGB(255, 104, 231, 231)
                                  color: ConstColors.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
