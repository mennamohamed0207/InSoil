
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:todo/Screens/recommended_screen.dart';

// ignore: camel_case_types
class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

// ignore: camel_case_types
class _dashboardState extends State<dashboard> {
  int count=0;
  List<String> ingredients = [
    'Moisture',
    'Nitrogen',
    'Phosphorus',
    'Potassium'];
  List<Color> colors = [
    Colors.green,
    Colors.pink,
    Colors.blue,
    Colors.orange,
  ];
  List<int> percentages = [
    25,34,60,80,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Dashboard',
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0 , horizontal: 18.0),
        child: Column(
          children: [
            GridView.count(
                crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing:10.0,
              childAspectRatio: 0.8,
              shrinkWrap: true,
              children: List.generate(4, (index){
                return CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 11.0,
                  animation: true,
                  percent: percentages[index] / 100,
                  center:  Text(
                    '${percentages[index]}%',
                    style:
                     TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0 ,fontFamily: 'Ubuntu',),
                  ),
                  footer:  Text(
                    ingredients[index],
                    style:
                     TextStyle(fontFamily: 'Ubuntu', fontSize: 17.0 , fontWeight: FontWeight.w600 , color: Colors.blueGrey),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: colors[index],
                );
              }),
            ),
           
            Container(
              height: 25.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ElevatedButton(
                  onPressed: (){
                    if (count ==16)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Recommend()),
                        );
                    }else {
                      setState(() {
                        count++;
                        print("$count");
                      });
                    }
                    setState(() {
                      percentages = percentages.map((e)=> Random().nextInt(100)).toList();
                    });
                  },
              child: Text(
                'Start Reading' , style:
              new TextStyle(fontSize: 17.0 , fontWeight: FontWeight.w600 , color: Colors.white),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// return Scaffold(
// backgroundColor: Colors.grey[200],
// appBar: AppBar(title: const Text("InSoil")),
// body: SingleChildScrollView(
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.all(15),
// child: dash("Quantity", "Result(mg/kg)", "Status")),
// const Divider(),
// Padding(
// padding: const EdgeInsets.all(15),
// child: dash("Nitrogen   ", "500", "medium"),
// ),
// const Divider(),
// Padding(
// padding: const EdgeInsets.all(15),
// child: dash("Phosphrous", "100", "Low"),
// ),
// const Divider(),
// Padding(
// padding: const EdgeInsets.all(15),
// child: dash("Potussium ", "100", "High"),
// ),
// const Divider(),
// Padding(
// padding: const EdgeInsets.all(15),
// child: dash("Moisture", "300", "medium"),
// ),
// const Divider(),
//
// //this line will be changed when the data exists
// /* const SizedBox(
//               height: 550,
//             ),*/
// Padding(
// padding: const EdgeInsets.all(15),
// child: ButtonBar(children: [
// SizedBox(
// height: 50,
// width: 100,
// child: MaterialButton(
// color: Colors.green,
// onPressed: () {
// // To do
// },
// child: const Text(
// 'Finish',
// style: TextStyle(fontSize: 20),
// ),
// ),
// ),
// ]),
// ),
// ],
// ),
// ),
// );