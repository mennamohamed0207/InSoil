import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../cache_helper.dart';
import 'Home_Page.dart';
class BoardingModel {
 // final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
   // required this.image,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    // BoardingModel(
    //   image: 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380',
    //   title: 'On Board 1 Title',
    //   body: 'On Board 1 Body',
    // ),
    // BoardingModel(
    //   image: 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380',
    //   title: 'On Board 2 Title',
    //   body: 'On Board 2 Body',
    // ),
    BoardingModel(
      //image: 'assets/images/logo.jpeg',
      title: 'InSoil',
      body: 'Keeps your land healthy',
    ),
  ];

  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: (){
              CacheHelper.putBoolean(key: 'skipped', value: true).then((value){
                print('kolo tmaaaam');
                bool ? skip_on_boarding = CacheHelper.getBoolean(key:'skipped');
                print(skip_on_boarding.toString());
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home_Page()));
              }).catchError((error){
                print("error hna" + error);
              });
            },
            child: Text(
              'SKIP'
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Spacer(),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home_Page()),
                    );
                  },
                  child: const Text(
                    'Come in',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Expanded(
      //   child: Image(
      //    // image: AssetImage(model.image),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      SizedBox(
        height: 30.0,
      ),
      Text(
        '${model.title}',
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        '${model.body}',
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
      SizedBox(
        height: 30.0,
      ),
    ],
  );
}