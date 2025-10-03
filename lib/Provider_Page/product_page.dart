import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_myapp/Provider_Page/cart_page.dart';

import 'cart_provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final List<Product> Products = [
    Product("Laptop", 50000),
    Product("Tv", 60000),
    Product("Phone", 20000),
    Product("Headphones", 2000),
    Product("Keyboard", 1500),
    Product("Mouse", 800),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, value, child) => Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        //   backgroundColor: Colors.green,
        //
        //   onPressed: ()
        //   {
        //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPage(),));
        //   }, child: Icon(Icons.shopping_cart),      ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Product"),
          actions: [
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPage(),)
                  );
                }, icon: Icon(Icons.shopping_cart)
                ),
        if (value.cart.isNotEmpty) // show only if  > 0
        Positioned(
         right: 8,
      top: 8,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.red,
        child: Text(
          value.cart.length.toString(),
          style: const TextStyle(
              fontSize: 12, color: Colors.white),
        ),
        )
        )
              ]
              ,),

          ],
        ),
        body: ListView.builder(
           padding: EdgeInsets.all(10),
          itemCount: Products.length,
          itemBuilder: (context, index) {
            final product = Products[index];
            return Card(
              color: Colors.yellow,
              margin: EdgeInsets.all(5),
              child: ListTile(
                title: Text(product.name),
                subtitle: Text("₹${product.price}"),
                trailing: ElevatedButton(
                    onPressed: ()
                    {
                      value.addToCart(product);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("+"),
                ),
              ),
            );
        },),
      ),
    );
  }
}
