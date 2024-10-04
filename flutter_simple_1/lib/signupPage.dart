import 'package:flutter/material.dart';

import 'homePage.dart';
import 'loginpage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: ListView(
          children: [
            Container(
                width: size.width,
                height: size.height / 4,
                padding: const EdgeInsets.only(left: 8,top: 15),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue[200]),),
                    Text('there!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                   const SizedBox(height: 20,),
                    const Text('create an account to access your package history and get real-time updates on all your shipments ',
                      style: TextStyle(color: Colors.grey),),
                  ],
                )
            ),

            const SizedBox(height: 40,),
            // text form feald
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              padding: const EdgeInsets.only(left: 5,right: 15),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                    border:const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:BorderSide.none
                    ) ,
                    prefixIcon: const Icon(Icons.email_outlined),
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: "Email",
                    hintStyle: const TextStyle(color: Colors.grey,)
                ),
              ),
            ),

            const SizedBox(height: 30,),
            // text form feald

            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              // padding: EdgeInsets.only(left: 5,right: 15),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                    border:const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:BorderSide.none
                    ) ,
                    prefixIcon: const Icon(Icons.lock),
                    iconColor: Colors.black54,
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off),),
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey,)
                ),
              ),
            ),

            const SizedBox(height: 30,),
            // text form feald

            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              // padding: EdgeInsets.only(left: 5,right: 15),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                    border:const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:BorderSide.none
                    ) ,
                    prefixIcon: const Icon(Icons.lock),
                    iconColor: Colors.black54,
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off),),
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: "confirm Password",
                    hintStyle: const TextStyle(color: Colors.grey,)
                ),
              ),
            ),


            const SizedBox(height: 5,),
            // check box
            Container(
                padding: EdgeInsets.all(5),
                  child: Row(

                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value){},
                      ),
                      Expanded(
                        child: TextButton(onPressed: (){},
                          child: Text('Agree to our Terms of Services and Privacy Policy',
                            style:  TextStyle(color: Colors.blue[200],),
                          ),
                        ),
                      ),
                    ],
                  ),

            ),

            const SizedBox(height: 15,),

            Container(
              margin: const EdgeInsets.only(left: 40,right: 40),
              child: ElevatedButton(
                onPressed: (){},
                child: const Text('signup',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5), // التحكم في المسافات الداخلية (حجم الزر)

                  shape: RoundedRectangleBorder( // شكل الزر (حواف مستديرة)
                    borderRadius: BorderRadius.circular(10), // تحديد نصف قطر الزوايا
                  ),
                ),

              ),
            ),

            const SizedBox(height: 30,),

            Container(
              margin: const EdgeInsets.only(left: 40,right: 40),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2), // التحكم في المسافات الداخلية (حجم الزر)
                  side: const BorderSide(width: 2.0, color: Colors.grey), // Border settings
                  shape: RoundedRectangleBorder( //// شكل الزر (حواف مستديرة)
                    borderRadius: BorderRadius.circular(30), // تحديد نصف قطر الزوايا
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/googleIcon.png',width: 50,height: 50,),
                    const Text('Continue with google',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                  ],
                ),

              ),
            ),

            const SizedBox(height: 20,),

            Container(
              margin: const EdgeInsets.only(left: 100),
              child: Center(
                child: Row(
                  children: [
                    const Text('Already have account'),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Loginpage()));
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

