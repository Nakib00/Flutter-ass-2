 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/scren/Task_bar.dart';

class Home extends StatelessWidget {
   const Home({super.key});

   @override
   Widget build(BuildContext context) {
     final size  = MediaQuery.of(context).size;
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const  Text("Welcome to"),
            const Text("Plan IT",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
            SizedBox(
              height: size.height*0.4,
            ),
            const Text(
              "Your personal  task mmanagement \nand planning solution",
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300), textAlign: TextAlign.center,
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskBar(key: UniqueKey()))),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const  Text("Let's Get Started",style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      )
     );
   }
 }


