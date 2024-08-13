import 'package:flutter/material.dart';
import 'package:traval_app/constants/app_colors.dart';
import 'package:traval_app/views/CheckoutOrderPage/Checkout_order_page.dart';
import 'package:traval_app/widgets/text_widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
                child: Center(
                  child: Text(
                    "We'll your hold spot fo 02:21 minutes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Text("Enter your personal detail",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 5,),
                  Text("Checkout is fast and secure",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              SizedBox(height: 10,),
              const TextField(
                 decoration: InputDecoration(
                  labelText: 'Enter your name',
                  hintText: 'Full name *',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10,),
               const TextField(
                 decoration: InputDecoration(
                  labelText: 'Email Adress',
                  hintText: 'Email *',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
               TextField(
                 decoration: InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(),
                ),
              ),
               SizedBox(height: 10,),
        
               TextField(
                 decoration: InputDecoration(
                  labelText: 'Phone number',
                  hintText: 'Phone number *',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  TextWidget(text: "We'll only contact you will essential updates or changes to your booking",
                  color: Colors.black,
                  )
                ],
              ),
              SizedBox(height: 60,),
              Divider(
                thickness: 2.0,
                
                color: Colors.grey,
                
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextWidget(text: '73.31',fontSize: 18.0,fontWeight: FontWeight.bold,),
                      TextWidget(text: 'Total',fontSize: 18.0,fontWeight: FontWeight.bold,),
          
                    ],
                  ),
                  
                  ElevatedButton(
                    
                    
                    
                    
                    onPressed: (){
                     Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckOutOrderPage()),
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
      ),

    );
  }
}