import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 16, 100, 255),
        ),
        width: 390,
        // height: 250,
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "\$58.63",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 10,
            ),
            // card info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "balance updated today at 12:34",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/expenses");
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("top-up-balance")),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
