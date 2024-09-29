import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 35),
          height: size.height,
          color: Colors.blue[50],
          child: ListView(
            children: [
              const Center(
                  child: Text(
                "Time to Customise Your Interest",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              Container(
                color: Colors.redAccent,
                child: Text("data"),
              )
            ],
          )),
    );
  }
}
