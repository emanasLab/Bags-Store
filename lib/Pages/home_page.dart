import 'package:ecommerce/Components/my_list_tile.dart';
import 'package:ecommerce/Models/product.dart';
import 'package:ecommerce/Models/product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        foregroundColor: Colors.brown[900],
        centerTitle: true,
        title: const Text(
          "Swan.",
          style: TextStyle(fontFamily: 'georgia', fontSize: 35),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.brown[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Icon(
                    Icons.shopify,
                    size: 90,
                    color: Colors.brown[900],
                  ),
                ),
                //Shop tile
                MyListTile(
                  pageTitle: "Bags",
                  icon: Icons.store_outlined,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //cart tile
                MyListTile(
                  pageTitle: "Cart",
                  icon: Icons.shopping_cart_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, '/cartPage');
                  },
                ),
                //profile tile
                MyListTile(
                  pageTitle: "Profile",
                  icon: Icons.person_outline,
                  onTap: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                ),
                //settings tile
                MyListTile(
                  pageTitle: "Settings",
                  icon: Icons.settings_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                ),
              ],
            ),

            //exsit tile
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: MyListTile(
                pageTitle: "Logout",
                icon: Icons.logout_outlined,
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/intro_page',
                    (rout) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //Items for you text
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Items for you",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //carousel
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductTile(
                        product: Product(
                          name: 'Sample Bag',
                          description: 'This is a sample bag description.',
                          price: 199.99,
                        ),
                      ),
                      ProductTile(
                        product: Product(
                          name: 'Sample Bag',
                          description: 'This is a sample bag description.',
                          price: 199.99,
                        ),
                      ),
                      ProductTile(
                        product: Product(
                          name: 'Sample Bag',
                          description: 'This is a sample bag description.',
                          price: 199.99,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
