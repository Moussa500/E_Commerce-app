import 'package:e_commerce_app/components/my_drawer.dart';
import 'package:e_commerce_app/components/product_tile.dart';
import 'package:e_commerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        actions: [
          //go to cart button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: ()=>Navigator.pushNamed(context, '/cart_page'), icon: const Icon(Icons.shopping_bag)),
          )
        ],
        title: const Text("Shop Page"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(height: 25,),
          //Shop subtitle
          Center(child: Text('pick from a selected list of premium products',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary
          ),
          )),
          //product list
          SizedBox(
        height: 550,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: products.length,
              padding: const EdgeInsets.all(25),

              itemBuilder: (context, index) {
                //get each individual product from shop
                final product = products[index];
                //return as a product tile UI
                return MyProductTile(product: product);
              })),
        ],
      )
    );
  }
}
