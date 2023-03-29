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
    var cardheight = height * 0.38;
    var cardwidth = width * 0.45;
    var imageheight = height * 0.3;
    var imagewidth = width * 0.4;
    final Uri _url = Uri.parse('https://forms.gle/C7xJBgGD2rYzkBYr9');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading:IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        title: const Text("InSoil"
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const Padding(padding: EdgeInsets.all(15)),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Text(
            //       "Our Services ",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 30,
            //           fontStyle: FontStyle.italic),
            //     ),
            //   ],
            // ),
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
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: cardheight,
                          width: cardwidth,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image(
                                image: NetworkImage(
                                    "https://static.vecteezy.com/system/resources/previews/005/057/049/non_2x/smart-farming-technology-illustration-concept-flat-illustration-isolated-on-white-background-vector.jpg"),
                                height: imageheight,
                                width: imagewidth,
                              )),
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Order our service ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic),
                                ),
                              )),
                            ],
                          ),
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
                      child: Card(
                          elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: cardheight,
                          width: cardwidth,
                        
                            color: Colors.white,
                          
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image(
                                      image: NetworkImage(
                                          "https://ibytecode.com/ibcjupiter/wp-content/uploads/2016/09/business-consultancy-in-chennai.png"),
                                      height: imageheight,
                                      width: imagewidth)),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Consutancy ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic),
                                ),
                              )),
                            ],
                          ),
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
                      child: Card(
                          elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: cardheight,
                          width: cardwidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image(
                                      image: NetworkImage(
                                          "https://media.istockphoto.com/vectors/insecticide-and-fertilizer-icon-vector-id1003133950"),
                                      height: imageheight,
                                      width: imagewidth)),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Fertilizers ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic),
                                ),
                              )),
                            ],
                          ),
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
                      child: Card(
                          elevation: 10,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: cardheight,
                          width: cardwidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image(
                                      image: NetworkImage(
                                          "https://static.vecteezy.com/system/resources/previews/008/329/474/original/dashboard-icon-style-free-vector.jpg"),
                                      height: imageheight,
                                      width: imagewidth)),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Dashboard ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic),
                                ),
                              )),
                            ],
                          ),
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
              borderRadius: BorderRadius.circular(30),
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
