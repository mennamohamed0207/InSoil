import 'package:flutter/material.dart';
import 'package:todo/functions.dart';

// ignore: camel_case_types
class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

// ignore: camel_case_types
class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("InSoil")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(15),
                child: dash("Quantity", "Result(mg/kg)", "Status")),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: dash("Nitrogen   ", "500", "medium"),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: dash("Phosphrous", "100", "Low"),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: dash("Potussium ", "100", "High"),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: dash("Moisture", "300", "medium"),
            ),
            const Divider(),

            //this line will be changed when the data exists
            /* const SizedBox(
              height: 550,
            ),*/
            Padding(
              padding: const EdgeInsets.all(15),
              child: ButtonBar(children: [
                SizedBox(
                  height: 50,
                  width: 100,
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      // To do
                    },
                    child: const Text(
                      'Finish',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
