import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  final color;
  const cards({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        width: 350,
        // height: 250,
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Basic Plus",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "120 minutes",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "20 gb internet",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "120 ms",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "22\$/month",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            // card info
          ],
        ),
      ),
    );
  }
}
