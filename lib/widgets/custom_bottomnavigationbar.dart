import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';

class CustomBottomnavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const CustomBottomnavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
       backgroundColor: ConstColors.primaryColor,
     selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      
      currentIndex: currentIndex,
      onTap: onItemTapped,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.disc_full_outlined),
          
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add_check),
          label: 'Library',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.code),
          label: 'Tour codes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Settings',
        ),
      ],
    );
  }
}
