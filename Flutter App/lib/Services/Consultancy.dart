import 'dart:core';
import 'package:flutter/material.dart';


import '../components.dart';

class Expert{
  String name;
  String title;
  String image;
  double rating;
  String phone;

  Expert(this.name, this.title, this.image, this.rating,this.phone);

}
class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  State<Consult> createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  List<Expert> experts = [
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/free-photo/portrait-man-white-shirt_171337-11986.jpg'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/graphicstock-successful-business-man-is-standing-on-isolated-white-background_r0GpgkoZb_thumb.jpg'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/free-photo/portrait-man-white-shirt_171337-11986.jpg'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/graphicstock-successful-business-man-is-standing-on-isolated-white-background_r0GpgkoZb_thumb.jpg'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/free-photo/portrait-man-white-shirt_171337-11986.jpg'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/graphicstock-successful-business-man-is-standing-on-isolated-white-background_r0GpgkoZb_thumb.jpg'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/free-photo/portrait-man-white-shirt_171337-11986.jpg'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/graphicstock-successful-business-man-is-standing-on-isolated-white-background_r0GpgkoZb_thumb.jpg'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/free-photo/portrait-man-white-shirt_171337-11986.jpg'
        , 3.5, '01095986878'),
    Expert('Hany Emad', 'Agricultural Specialist', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/graphicstock-successful-business-man-is-standing-on-isolated-white-background_r0GpgkoZb_thumb.jpg'
        , 5, '01095986878'),
  ];

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
              Icons.person,
              size: 150,
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
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Consultancy")),
      body: ExpertBuilder(experts, context),
    );
  }
}