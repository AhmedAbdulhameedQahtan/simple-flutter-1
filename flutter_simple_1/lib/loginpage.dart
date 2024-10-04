import 'package:flutter/material.dart';
import 'package:flutter_simple_1/homePage.dart';
import 'package:flutter_simple_1/signupPage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();

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
                      Text('welcome',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue[200]),),
                      const Text('Back !',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                      const SizedBox(height: 10,),
                      const Text('sign in to access your packge history and get real-time updaete on all your shipment',
                      style: TextStyle(color: Colors.grey),),
                    ],
                  )
                ),

                const SizedBox(height: 50,),
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
                        prefix: Text('|'),
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye),),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.grey,)
                    ),
                  ),
                ),


                const SizedBox(height: 5,),

                Container(
                  padding: EdgeInsets.all(5),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value){},
                            ),
                            const Text('Remember me '),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Loginpage()));
                        },
                        child:const Text('Forgot password', style:  TextStyle(color: Colors.blue),),),

                    ],
                  )
                ),

                const SizedBox(height: 25,),

                Container(
                  margin: const EdgeInsets.only(left: 40,right: 40),
                  child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('login',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5), // التحكم في المسافات الداخلية (حجم الزر)

                      shape: RoundedRectangleBorder( // شكل الزر (حواف مستديرة)
                        borderRadius: BorderRadius.circular(10), // تحديد نصف قطر الزوايا
                      ),
                    ),

                  ),
                ),

                const SizedBox(height: 55,),

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

                const SizedBox(height: 40,),

                Container(
                  margin: const EdgeInsets.only(left: 70),
                  child: Center(
                    child: Row(
                      children: [
                        const Text('Dont have account?'),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPage()));
                          },
                          child:const Text('Create an Account', style:  TextStyle(color: Colors.blue),),)
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
