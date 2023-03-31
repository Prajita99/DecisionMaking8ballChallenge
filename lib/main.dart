import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: BallPage(),
    ),
    ),
    );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  TextEditingController _formData = TextEditingController();
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {

     void changeBallNumber() => setState(() {
    ballNumber = Random().nextInt(5) + 1;
  },
  );

    return Center(
      child: Row(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: TextFormField(
          //     controller: _formData,
          //           decoration: InputDecoration(
          //             border: OutlineInputBorder(),
          //             hintText: "Enter an item",
          //           ),
          //   ),
          // ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBallNumber();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
            
          ),
        ],
      ),
    );
  }
}
