import 'package:flutter/material.dart';

class expenses extends StatefulWidget {
  const expenses({super.key});

  @override
  State<expenses> createState() => _expensesState();
}

class _expensesState extends State<expenses> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("expenses",style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 224, 224, 224),
                width: 2.0
              )
            ),
            child: Text("1 jan - 24 jan"))
           ]),
         ),
      ),
    );
  }
}