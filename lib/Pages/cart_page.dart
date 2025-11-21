import 'package:flutter/material.dart';
import '../Components/my_list_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
          style: TextStyle(
            fontFamily: 'georgia',
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
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
                    Navigator.pushNamed(context, '/homePage');
                  },
                ),
                //cart tile
                MyListTile(
                  pageTitle: "Cart",
                  icon: Icons.shopping_cart_outlined,
                  onTap: () {
                    Navigator.pop(context);
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

      body: Center(
        child: Text(
          "Cart Page",
          style: TextStyle(fontSize: 24, color: Colors.brown[900]),
        ),
      ),
    );
  }
}
