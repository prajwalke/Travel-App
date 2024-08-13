import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/constants/app_images.dart';
import 'package:traval_app/widgets/text_widget.dart';

class CheckOutOrderPage extends StatefulWidget {
  const CheckOutOrderPage({super.key});

  @override
  State<CheckOutOrderPage> createState() => _CheckOutOrderPageState();
}

class _CheckOutOrderPageState extends State<CheckOutOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstColors.primaryColor,
        title: const Center(child: Text("Checkout",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
        SizedBox(height: 25.0,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.blue,
                  child: Text("1"),
                ),
                SizedBox(height: 5),
                Text("Contact"),
              ],
            ),
            SizedBox(width: 20,),
            Divider(),
            SizedBox(width: 80,),
            Column(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.blue,
                  child: Text("2"),
                ),
                SizedBox(height: 5),
                Text("Payment"),
              ],
            ),
            
          ],
        ),
        SizedBox(height: 10.0,),
        Container(
          
                width: double.infinity, // Make it take the full width
                height: 40, // Set the desired height
                color: ConstColors.primaryColor, // Set the color of the Container
                child: const Center(
                  child: Text(
                    "We'll your hold spot fo 02:21 minutes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              const Row(
                children: [
                  Text("Review your order",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  
                ],
              ),
              SizedBox(height: 5,),
              Divider(color: Colors.grey,),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'Order Summary',fontSize: 16.0,),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(
        image: AssetImage(DefaultImages.Egypt), // Replace with the actual image path
        fit: BoxFit.cover, // Adjust the BoxFit based on your needs
            ),
                    ),
                  ),
                  SizedBox(width: 5,),
                   Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(
        image: AssetImage(DefaultImages.Egypt), // Replace with the actual image path
        fit: BoxFit.cover, // Adjust the BoxFit based on your needs
            ),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down),
                  
                  // Image(DefaultImages.Egypt),
                 
                  // Image.asset(DefaultImages.Egypt)
        
                ],
                
              ),
              SizedBox(height: 10,),
              Divider(color: Colors.grey,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'Subtotal',fontSize: 15.0,
                  ),
                  TextWidget(text: '73.31',fontSize: 15.0,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  TextWidget(text: 'PaymentMethod',fontSize: 20, fontWeight: FontWeight.bold,)
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'Debit or credit card',fontSize: 18.0,),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(
        image: AssetImage(DefaultImages.Egypt), // Replace with the actual image path
        fit: BoxFit.cover, // Adjust the BoxFit based on your needs
            ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(
        image: AssetImage(DefaultImages.Egypt), // Replace with the actual image path
        fit: BoxFit.cover, // Adjust the BoxFit based on your needs
            ),
                    ),
                  ),
        //           SizedBox(width: 5,),
        //           Container(
        //             height: 40,
        //             width: 80,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //              image: DecorationImage(
        // image: AssetImage(DefaultImages.Egypt), // Replace with the actual image path
        // fit: BoxFit.cover, // Adjust the BoxFit based on your needs
        //     ),
        //             ),
        //           ),
        
                  
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'Paypal',fontSize: 18.0),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(
        image: AssetImage(DefaultImages.Egypt), // Replace with the actual image path
        fit: BoxFit.cover, // Adjust the BoxFit based on your needs
            ),
                    ),
                  ),
        
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  TextWidget(text: 'Enter gift or promo code',fontSize: 18.0,fontWeight: FontWeight.bold,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'Total',fontSize: 20,fontWeight: FontWeight.bold,),
                   TextWidget(text: '73.31',fontSize: 20,fontWeight: FontWeight.bold,),
                                 ],
              ),
              SizedBox(height: 5,),
               TextField(
                
                 decoration: InputDecoration(
                  labelText: 'Freecancellation',
                  
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 5,),
              Text(''' By countinuing you agree to GetyourGuides general terms and conditions and your activity providers terms and condition,included at the link in the order summery(if supplied by the activity provider). Read more on the right of withdrawed and information on the applicable traval law.''',
              style: TextStyle(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.bold),)
              
             
              
              
            ]
          ),
        ),
      )
            );

  }
}