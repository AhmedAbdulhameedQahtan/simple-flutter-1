import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_simple_1/homePage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 2000), _goNext);
  }

  _goNext() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const Homepage()),
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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50],
        ),
        child: ListView(
          children: [
            Container(
              width: size.width,
              height: size.height / 3,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Welcome to simple Board Review",
                  style: TextStyle(fontSize: 40, color: Colors.black,    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 25),
                child: const Text(
                  "your most reliable resource for all your Board exams",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),



            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    _goNext();
              },
                  child: const Text('Get Started',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // التحكم في المسافات الداخلية (حجم الزر)

                shape: RoundedRectangleBorder( // شكل الزر (حواف مستديرة)
                  borderRadius: BorderRadius.circular(10), // تحديد نصف قطر الزوايا
                ),
              ),

              ),
            ),
            const SizedBox(height: 10,),
            
            Container(
              margin: const EdgeInsets.only(left: 90),
              child: Center(
                child: Row(
                  children: [
                    const Text('Alrady have an account?'),
                    TextButton(
                      onPressed: (){

                      },
                      child:const Text('login', style:  TextStyle(color: Colors.blue),),)
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
