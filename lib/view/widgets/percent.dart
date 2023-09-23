import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class perceny extends StatefulWidget {
  const perceny({super.key});

  @override
  State<perceny> createState() => _percenyState();
}

class _percenyState extends State<perceny> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(255, 224, 224, 224),
      width: 2.0
    )
  ),
  child:   new CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 2.0,
                  animation: true,
                  percent: 0.7,
                  center: new Text(
                    "365",
                    style:
                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: new Text(
                    "For 23 days",
                    style:
                        new TextStyle(color: Colors.grey),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.orange,
                ),
),
Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(255, 224, 224, 224),
      width: 2.0
    )
  ),
  child:   new CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 2.0,
                  animation: true,
                  percent: 0.5,
                  center: new Text(
                    "2.6",
                    style:
                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: new Text(
                    "For 15 days",
                    style:
                        new TextStyle(color: Colors.grey),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.blue,
                ),
),            
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 224, 224, 224),
                      width: 2.0,
                    )
                  ),
                  child: new CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 2.0,
                  animation: true,
                  percent: 0.5,
                  center: new Text(
                    "252",
                    style:
                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: new Text(
                    "For 15 days",
                    style:
                        new TextStyle(color: Colors.grey),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
                              ),
                ),

              
      ],
    );
  }
}