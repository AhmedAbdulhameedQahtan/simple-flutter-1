import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_simple_1/FirstPage.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 2000), _goNext);
  }

  _goNext() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const FirstPage()),
    );
  }

  @override
  void initState() {
    super.initState();
    _startDelay();

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.blue[100],
            statusBarBrightness: Brightness.light),
      ),

      body:  Container(
        width:size.width ,
        height:size.height ,
        decoration:BoxDecoration(
          color: Colors.blue[100],
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/image1.png'),
              const SizedBox(height: 20,),
              // const Text("Welcome . .",
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 40,
              //     fontFamily: 'Aurora',
              //   ),),
              const SizedBox(height: 10,),

              const CircularProgressIndicator(),

            ],
          )
        ),
      ),

    );
  }
}
