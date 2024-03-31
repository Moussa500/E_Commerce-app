import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    //product 1
    Product(name: "Eye Glasses", price: 53.12, description: "a perfect eye glasses",imagePath: 'assets/glass.png'),
    //product 2
    Product(name: "Hoodie", price: 80.10, description: "beautiful black hoodie",imagePath: 'assets/hoodie.png'),
    //product 3
    Product(name: "Adidas Sneakers", price: 40.99, description: "A good Adidas sneakers for sport",imagePath: 'assets/shoe.png'),
    //product 4
    Product(name: "Smart watch", price: 50.99, description: "a new brand smart watch",imagePath: 'assets/watch.png'),
  ];
  //user cart
  List<Product> _cart = [];
  //get product list
  List<Product> get shop => _shop;
  //get user cart
  List<Product> get cart => _cart;
  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
