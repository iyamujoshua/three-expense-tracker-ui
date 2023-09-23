import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class expenses extends StatefulWidget {
  const expenses({super.key});

  @override
  State<expenses> createState() => _expensesState();
}

class _expensesState extends State<expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Expenses", style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 224, 224, 224),
                      )
                    ),
                    child: Text("1 jan - 24 jan ", style:TextStyle(
                                
                    )),
                  ),
                ],
              ),
              Center(
  child: Container(
    width: 300,
    height: 300,
    child: Stack(
      children: [
        PieChart(
          PieChartData(
            centerSpaceRadius: 50,
            borderData: FlBorderData(show: false),
            sectionsSpace: 2,
            sections: [
              PieChartSectionData(
                value: 35,
                color: Colors.purple,
                radius: 100,
              ),
              PieChartSectionData(
                value: 45,
                color: Colors.orange,
                radius: 100,
              ),
              PieChartSectionData(
                value: 55,
                color: Colors.blue,
                radius: 100,
              ),
              PieChartSectionData(
                value: 70,
                color: Colors.green,
                radius: 100,
              ),
              PieChartSectionData(
                value: 20,
                color: Color.fromARGB(255, 13, 198, 230),
                radius: 100,
              ),
            ],
          ),
        ),
        Center(
          child: Text(
            "\$62.16",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  ),
), SizedBox(height: 20,),

ListTile(
  onTap: () {},
  leading: Icon(Icons.payment), // Use a fintech-related icon (e.g., payment)
  title: Text("tariff fee"), // Replace with your desired title text
  trailing: Text("\$26,23"), // Replace with your desired trailing text
),
ListTile(
  onTap: () {},
  leading: Icon(Icons.account_balance), // Use a fintech-related icon (e.g., account_balance)
  title: Text("internet"), // Replace with your desired title text
  trailing: Text("\$11,52"), // Replace with your desired trailing text
),
ListTile(
  onTap: () {},
  leading: Icon(Icons.credit_card), // Use a fintech-related icon (e.g., credit_card)
  title: Text("Sms"), // Replace with your desired title text
  trailing: Text("\$13,23"), // Replace with your desired trailing text
),
ListTile(
  onTap: () {},
  leading: Icon(Icons.attach_money), // Use a fintech-related icon (e.g., attach_money)
  title: Text("phone"), // Replace with your desired title text
  trailing: Text("\$9,73"), // Replace with your desired trailing text
),
ListTile(
  onTap: () {},
  leading: Icon(Icons.account_balance_wallet), // Use a fintech-related icon (e.g., account_balance_wallet)
  title: Text("subscriptions"), // Replace with your desired title text
  trailing: Text("\$5.32"), // Replace with your desired trailing text
),





            ],
          ),
        ),
      ),
    );
  }
}
