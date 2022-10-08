import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("InSoil")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(top: 20, bottom: 15, start: 10),
            child: Text(
              "Phone Number",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              //editing controller of this TextField
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                  //icon of text field
                  labelText: "Enter phone number" //label text of field
                  ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "Times of work are from 9:00 AM to 18:00 PM",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                color: Colors.green,
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    content: const Text(
                        'You will receive a phone call within 10 minutes'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Okay'),
                        child: const Text('Okay'),
                      ),
                    ],
                  ),
                ),
                child: const Text(
                  'Okay',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
