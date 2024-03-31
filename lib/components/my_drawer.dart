import 'package:e_commerce_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              )),
              //shop tile
              const SizedBox(
                height: 25,
              ),
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              //cart tile
              const SizedBox(
                height: 25,
              ),
              MyListTile(
                text: "Card",
                icon: Icons.shopping_cart,
                onTap: () {
                  //pop drawer first
                  Navigator.pop(context);
                  //go to cart_page
                  Navigator.pushNamed(context,'/cart_page');
                },
              ),
              //exit shop
              const SizedBox(
                height: 25,
              ),
            ],
          ),
          MyListTile(
            text: "Exit",
            icon: Icons.logout,
            onTap: () {
              //pop drawer first
              Navigator.pop(context);
              //go back to intro page
              Navigator.pushNamed(context, '/intro_page');
            },
          ),
        ],
      ),
    );
  }
}
