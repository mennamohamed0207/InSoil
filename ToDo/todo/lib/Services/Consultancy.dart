import 'package:flutter/material.dart';
import 'package:todo/Screens/Phone_consult.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  State<Consult> createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    var cardheight = height * 0.35;
    var cardwidth = width * 0.45;
    Container Expert(String Name) {
      return Container(
        height: cardheight,
        width: cardwidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Icon(
              size: 150,
              Icons.person,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("InSoil")),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Our Experts ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(15)),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 5),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Phone()),
                      );
                    },
                    child: Expert("Ahmed Mohamed"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 5),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Phone()),
                      );
                    },
                    child: Expert("Ahmed Mohamed"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 5),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Phone()),
                      );
                    },
                    child: Expert("Ahmed Mohamed"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 5),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Phone()),
                      );
                    },
                    child: Expert("Ahmed Mohamed"),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
