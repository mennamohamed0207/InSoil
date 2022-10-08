import 'package:flutter/material.dart';
import 'package:todo/Services/Consultancy.dart';
import 'package:todo/Services/Fertilizer.dart';
import 'package:todo/Services/dashboard.dart';
import 'package:todo/Services/our_product.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    var cardheight = height * 0.35;
    var cardwidth = width * 0.45;
    final Uri _url = Uri.parse('https://form.jotform.com/222788095072059');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
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
                  "Our Services ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
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
                    padding: const EdgeInsetsDirectional.only(start: 5),
                    child: MaterialButton(
                      onPressed: _launchUrl,
                      child: Container(
                        height: cardheight,
                        width: cardwidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: const [
                            Expanded(
                                child: Image(
                                    image: NetworkImage(
                                        "https://ae01.alicdn.com/kf/H3b62321bf8684e1b942ea3e073ea6db0T/Soil-NPK-detector-display-meter-can-export-history-data-to-U-disk-with-earth-NPK-sensor.jpg_Q90.jpg_.webp"))),
                            Center(
                                child: Text(
                              "Our device ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            )),
                          ],
                        ),
                      ),
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
                          MaterialPageRoute(
                              builder: (context) => const Consult()),
                        );
                      },
                      child: Container(
                        height: cardheight,
                        width: cardwidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: const [
                            Expanded(
                                child: Image(
                                    image: NetworkImage(
                                        "https://thumbs.dreamstime.com/b/men-women-consultants-vector-illustration-original-paintings-drawing-72672466.jpg"))),
                            Center(
                                child: Text(
                              "Consutancy ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 5),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const fertilizer()),
                        );
                      },
                      child: Container(
                        height: cardheight,
                        width: cardwidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: const [
                            Expanded(
                                child: Image(
                                    image: NetworkImage(
                                        "https://media.istockphoto.com/vectors/insecticide-and-fertilizer-icon-vector-id1003133950"))),
                            Center(
                                child: Text(
                              "Fertilizers ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            )),
                          ],
                        ),
                      ),
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
                          MaterialPageRoute(
                              builder: (context) => const dashboard()),
                        );
                      },
                      child: Container(
                        height: cardheight,
                        width: cardwidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: const [
                            Expanded(
                                child: Image(
                                    image: NetworkImage(
                                        "https://static.vecteezy.com/system/resources/previews/008/329/474/original/dashboard-icon-style-free-vector.jpg"))),
                            Center(
                                child: Text(
                              "Dashboard ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Service(String ser, String url) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 5),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Product()),
            );
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            child: const Padding(
              padding: EdgeInsetsDirectional.only(top: 190),
              child: Center(
                  child: Text(
                "Our device ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
