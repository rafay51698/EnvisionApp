import 'package:flutter/material.dart';
import 'package:flutterapp/theme/app_color.dart';

class Studeennntttt extends StatefulWidget {
  const Studeennntttt({Key? key}) : super(key: key);

  @override
  _StudeennnttttState createState() => _StudeennnttttState();
}

class _StudeennnttttState extends State<Studeennntttt> {
  List teachername = [
    "Anas Mughal",
    "AHmed Mirza",
    "Umair Khan",
    "Fahad Rehman",
    "NOice"
  ];
  List Fees = ['engineering', 'commerce', 'engineering', 'science', 'medical'];

  List phone = [
    '03423542545 ',
    '0534534543',
    '05232523523',
    '023523532523',
    '0252236236'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: primary,
        foregroundColor: white,
        title: const Text(
          'Student Data',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: teachername.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const LoginStudent(),
                //   ),
                // );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primary,
                ),
                margin: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 90,
                      width: 135,
                      child: Image.asset("assets/student1.png"),
                    ),
                    Text(
                      "Name: ${teachername[index]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "Department: ${Fees[index]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "Phone: ${phone[index]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
