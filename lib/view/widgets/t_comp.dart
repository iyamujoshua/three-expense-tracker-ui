import 'package:flutter/material.dart';

class skills extends StatelessWidget {
  // final icon;
  final String speaking;
  final String speakingmic;
  final color;
  const skills({
    super.key,
    // required this.icon,
    required this.speaking,
    required this.speakingmic,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xFF0E1532), borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(70)),
                  // child: Icon(
                  //   icon,
                  //   color: Colors.white,
                  // )
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      speaking,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      speakingmic,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Text(
              "100,000",
              style: TextStyle(color: Colors.white),
            )
            // Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}