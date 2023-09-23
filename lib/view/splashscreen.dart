import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'asset/stack.png', // Replace with your image path
            fit: BoxFit.cover, // Adjust this property to control image scaling
          ),
        ),
        // Other Cont

        Column(
          children: [
            SizedBox(
              height: 500,
            ),
            Center(
              child: Text(
                "Save Money\n in bonuses",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
            ),
            Center(
              child: Text(
                "cashback from every spend\n and payment for any service",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/ButtomNavigation");
              },
              child: Container(
                width: 150,
                height: 60,
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                )),
                decoration: BoxDecoration(color: Colors.white),
              ),
            )
          ],
        )
      ],
    ));
  }
}
