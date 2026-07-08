import 'package:flutter/material.dart';

import 'button.dart';

void main() {
  runApp(const c3());
}


//Regular Functions :::
// void main() { }
//
// Void – type
// main  – name
// ()  – input parameter
// { } – body
//
// Anonymous Function::
// Eta hocchey jei function er type and name thakey na .
// Like :  () { }
// Eta key variable diya call kora hoy .. variable type final or dynamic hoy only ..
// Example :
// final classyvar= () { }

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //🔴Screen er background colour change korar 3 way
        //backgroundColor: Colors.red.shade300,
        //backgroundColor: Colors.green[200],
        //backgroundColor: Colors.red.withOpacity(0.5),


        appBar: AppBar( //AppBar er All UseCase..

          title: Text("My App"),//AppBar-এর মাঝখানে বা বাম দিকে Title দেখায়।
          centerTitle: true,


          backgroundColor: Colors.lightBlueAccent,//appBar er color yellow kore dilam
          foregroundColor: Colors.white,// My App er text white kore dilam


          leading: Icon(Icons.menu),//AppBar-এর একদম --বাম-- পাশে Drawer-Widget দেখানোর জন্য।


          actions: [//AppBar-এর ডান পাশে এক বা একাধিক Button বা Icon দেখানোর জন্য।
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],


          elevation: 4,//Shadow-এর পরিমাণ নির্ধারণ করে।


          toolbarHeight: 70,//AppBar-এর Height পরিবর্তন করে।


          automaticallyImplyLeading: false,//Back Button স্বয়ংক্রিয়ভাবে দেখাবে কি না।


          shape: RoundedRectangleBorder( //appbar er shape change korar jonno .
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),


          flexibleSpace: Container( // gradient colour design and Background-এ Image যোগ করতে ব্যবহৃত হয়
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
              ),
            ),
          ),



        ),
      ),
    );
  }
}
