import 'package:flutter/material.dart';

import 'Home_Page.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              width: double.infinity,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Home_Page()),
                  );
                },
                child: const Text(
                  "InSoil",
                  style: TextStyle(fontSize: 80),
                ),
                // child: const Image(image: AssetImage("images/InSoil.jpeg")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
