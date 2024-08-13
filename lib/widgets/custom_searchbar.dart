import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/views/SearchPage/search_page.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;

  const CustomSearchBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
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
        children: [
          Icon(Icons.location_history_rounded, color: Colors.grey),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search for a destination...',
                border: InputBorder.none,
                 suffixIcon: InkWell(
                  onTap: () {
                    // Perform navigation here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchBarPage()),
                    );
                  },
                   child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: ConstColors.primaryColor),
                    child: Icon(Icons.search,
                    
                    )),
                 ),
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
