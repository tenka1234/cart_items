import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_myapp/Provider_Page/cart_provider.dart';

class CartPage extends StatefulWidget {
  const   CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children:
          [ Expanded(
            child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index)
              {
                final productItem = value.cart[index];
                return Card(
                  margin: EdgeInsets.all(5),
                  child: ListTile(
                    title: Text("₹${productItem.price}"),
                    trailing: IconButton(onPressed: ()
                    {
                      value.removeFromCart(productItem);
                  
                    }, icon: Icon(Icons.remove_circle,color: Colors.red,)
                    ),
                  ),
                );
              },
            ),
           ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("Total Price : ${value.totalprice}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
