import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/views/Attraction/pkgtwo.dart';

class PackagesPage extends StatefulWidget {
  const PackagesPage({Key? key}) : super(key: key);

  @override
  _PackagesPageState createState() => _PackagesPageState();
}

class _PackagesPageState extends State<PackagesPage> {
  Color _textColor = Colors.white;

  void _toggleTextColor() {
    setState(() {
      _textColor = _textColor == Colors.white
           //? Color.fromARGB(255, 104, 231, 231)
            ? Colors.blue
          : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package 1 Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 104, 231, 231),
                color: ConstColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Egypt',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _toggleTextColor();
                  },
                  child: Text(
                    'Attraction',
                    style: TextStyle(color: _textColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _toggleTextColor();
                  },
                  child: Text(
                    'Packages',
                    style: TextStyle(color: _textColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _toggleTextColor();
                  },
                  child: Text(
                    'Games',
                    style: TextStyle(color: _textColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _toggleTextColor();
                  },
                  child: Text(
                    'Special',
                    style: TextStyle(color: _textColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    // border: Border.all(color: Colors.blue),
                     border: Border.all(color: ConstColors.primaryColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Padding(
  padding: const EdgeInsets.only(top: 1.0),
  child: Container(
    width: 900,
    height: 60, // Set desired height
    decoration: BoxDecoration(
      // color: Colors.black,
      color: ConstColors.primaryColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0), // Add upper corner radius
        topRight: Radius.circular(10.0),
      ),
    ),
    child: Center(
      child: Text(
        'Full Egypt Package',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
),

                      SizedBox(height: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get to Know Egypt',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '12 comprehensive walk-through guides for attractions that will elevate your experience to the next level',
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '12 Attraction Tours',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Scavenger Hunt Game\nLook for clues, find hidden treasure, visit places with a fun twist',
                          ),
                          Text(
                            'Get to Know Egypt',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '12 comprehensive walk-through guides for attractions that will elevate your experience to the next level',
                          ),
                          SizedBox(height: 8.0),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: GestureDetector(
                             onTap: () {
            // Navigate to PackageDetailPage when "See more" is clicked
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PackageDetailPage()),
            );
          },
                            child: Text(
                              
                              'See more',
                              
                              style: TextStyle(
                                // color: Color.fromARGB(255, 104, 231, 231),
                                color: ConstColors.primaryColor
                              ),
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
      ),
    );
  }
}
