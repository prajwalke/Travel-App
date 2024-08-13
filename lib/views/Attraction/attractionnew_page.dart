

// import 'package:flutter/material.dart';

// class CartPage extends StatefulWidget {
//   @override
//   _CartPageState createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   int count = 1; // Define count variable

//   void _incrementCount() {
//     setState(() {
//       count++;
//     });
//   }

//   void _decrementCount() {
//     if (count > 1) {
//       setState(() {
//         count--;
//         count--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: ListView(
//                 children: [
//                   _buildCartItem(),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20), // Moved SizedBox here
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 104, 231, 231),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 padding: EdgeInsets.all(20.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Number of users:',
//                       style: TextStyle(
//                         color: Color.fromRGBO(9, 0, 0, 1),
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(width: 20),
//                     IconButton(
//                       onPressed: _decrementCount,
//                       icon: Icon(Icons.remove, color: Colors.black),
//                       iconSize: 32,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       count.toString(),
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     IconButton(
//                       onPressed: _incrementCount,
//                       icon: Icon(Icons.add, color: Colors.black),
//                       iconSize: 32,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20), // Added SizedBox for spacing
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[800],
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30.0),
//                   topRight: Radius.circular(30.0),
//                 ),
//               ),
//               padding: EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'User 1',
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 104, 231, 231),
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       // Add functionality to select language
//                     },
//                     icon: Icon(Icons.arrow_drop_down, color: Colors.black),
//                     label: Text(
//                       'Select Language',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       primary: Color.fromARGB(255, 104, 231, 231),
//                       elevation: 0,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             _buildFooter(), // Moved _buildFooter here
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCartItem() {
//     return Card(
//       child: ListTile(
//         title: Text('Pyramids of Giza'),
//         subtitle: Text('Price: \$100.00'),
//         leading: Image.network(
//           'https://www.travelandleisure.com/thmb/deOyUeJ_AjSN7tKUxU1inWWViNQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/giza-pyramid-EGYPTSECRETS1016-617b2b1b23dd4fd38bc9f365af7235ab.jpg',
//           fit: BoxFit.cover,
//           width: 100,
//         ),
//         trailing: Text('Quantity: $count'), // Show dynamic count here
//       ),
//     );
//   }

//   Widget _buildFooter() {
//     return ElevatedButton(
//       onPressed: () {
//         // Add to cart logic
//       },
//       child: Text('Add to Cart'),
//     );
//   }
// }



import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int count = 1; // Define count variable

  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  void _decrementCount() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildCartItem(),
          SizedBox(height: 10), // Add space between containers
          _buildNumberContainer(),
          SizedBox(height: 10), // Add space between containers
          _buildUserContainer(),
          SizedBox(height: 10), // Add space between containers
          _buildFooter(),
        ],
      ),
    );
  }

 Widget _buildCartItem() {
  return Container(
    height: 220, // Adjust height as needed
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: Color.fromARGB(255, 104, 231, 231),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  'https://www.travelandleisure.com/thmb/deOyUeJ_AjSN7tKUxU1inWWViNQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/giza-pyramid-EGYPTSECRETS1016-617b2b1b23dd4fd38bc9f365af7235ab.jpg',
                  fit: BoxFit.cover,
                  color: Color.fromARGB(255, 104, 231, 231),
                  colorBlendMode: BlendMode.color, // Apply color to the image
                ),
              ),
            ),
          ),
          SizedBox(width: 10), // Add spacing between image and text
          Expanded(
            child: ListTile(
              title: Text(
                'Pyramids of Giza',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Single Attraction Tour',
                    style: TextStyle(
                   color: Color.fromARGB(255, 104, 231, 231),
                    ),
                  ),
                  SizedBox(height: 4), // Add spacing between the texts
                  Text(
                    '• Our guides can only be accessed through the Crumbal app',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '• Our guides can only be accessed through the Crumbal app',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


  Widget _buildNumberContainer() {
    return Container(
      height: 200, // Increased height
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 104, 231, 231),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Number of users:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: _decrementCount,
            icon: Icon(Icons.remove, color: Colors.black),
          ),
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: _incrementCount,
            icon: Icon(Icons.add, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildUserContainer() {
    return Container(
      height: 200, // Increased height
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'User 1',
            style: TextStyle(
              color: Color.fromARGB(255, 104, 231, 231),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Add functionality to select language
            },
            icon: Icon(Icons.arrow_drop_down, color: Colors.black),
            label: Text(
              'Select Language',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 104, 231, 231),
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white, // Set background color to white
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            ' User2:', // Displaying "$"
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Text(
            '\$16', // Displaying "$16" in bold
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold, // Make text bold
            ),
          ),
          Spacer(), // Add space to separate the price and the button
          ElevatedButton(
            onPressed: () {
              // Add to cart logic
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 104, 231, 231), // Set button color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, // Set text color to black
                  fontWeight: FontWeight.bold, // Make text bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

