import 'package:flutter/material.dart';
import 'package:internship_ui/view/widgets/balance_card.dart';
import 'package:internship_ui/view/widgets/hot.dart';
import 'package:internship_ui/view/widgets/hot_deals.dart';
import 'package:internship_ui/view/widgets/percent.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepag extends StatefulWidget {
  const Homepag({super.key});

  @override
  State<Homepag> createState() => _HomepagState();
}

class _HomepagState extends State<Homepag> {
    final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "home",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              MyCards(),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(
                    "you have",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              perceny(),
                      SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("hot deals🔥", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                   GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text("see all"),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:Color.fromARGB(255, 224, 224, 224),
                        width: 2.0
                      )
                    ),
                    ))
                ],
              ),
              SizedBox(height: 20,),

        Container(
              // color: Colors.red,
              height: 170,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  cards(
                    color: Colors.purple,
                  ),
                  cards(
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),


            ]),
          ),
        ),
      ),
    );
  }
}
