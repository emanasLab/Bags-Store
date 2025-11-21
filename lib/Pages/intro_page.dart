import 'package:ecommerce/Components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.shopify, size: 90, color: Colors.brown[900]),
            // SizedBox(height: 15),
            //Name
            Text(
              "Swan. Bags",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.brown[900],
              ),
            ),

            //Slogan
            Text(
              "so you can carry your world.",
              style: TextStyle(
                fontFamily: 'Serif',
                fontSize: 20,
                color: const Color.fromARGB(176, 93, 64, 55),
              ),
            ),
            //button
            SizedBox(height: 50),
            Mybutton(
              onTap: () {
                Navigator.pushNamed(context, '/homePage');
              },
              child: const Text(
                "Get startess",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
