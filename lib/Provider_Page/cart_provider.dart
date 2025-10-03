import 'package:flutter/material.dart';

// class Product {
//   final String name;
//   final double price;
//
//   Product(this.name, this.price);
// }
class Product
{
  final String name;
  final double price;

  Product(this.name, this.price);
}

class CartProvider extends ChangeNotifier
{
  final List<Product>  cartItems = [];

  List<Product> get cart => cartItems;

    void addToCart(Product product)
    {
      cartItems.add(product);
      notifyListeners();
    }

    void removeFromCart(Product prodcut)
    {
      cartItems.remove(prodcut);
      notifyListeners();
    }

    double get totalprice
    {
      double total = 0;

      for(var item in cartItems)
        {
          total+= item.price;

        }
      return total;
    }

}