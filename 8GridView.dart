import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Hello'),
        backgroundColor: Colors.yellow,
      ),



      /*
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,// Row-এর Child-গুলোর মাঝে সমান Space দেয়।

            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.lightGreenAccent,
              ),

              Container(
                height: 60,
                width: 60,
                color: Colors.green,
              ),

              // Spacer() ব্যবহার করলে বাকি Space দখল করে।

              Container(
                height: 60,
                width: 60,
                color: Colors.pink,
              ),
            ],
          ),
        ],
      ),
      */

      // ===================================================
      // GridView.count Example
      // ===================================================

      /*
      body: GridView.count(
        crossAxisCount: 2,// এক Row-তে কয়টি Item থাকবে।
        crossAxisSpacing: 10,// Column-এর মাঝে Horizontal Gap।
        mainAxisSpacing: 5,// Row-এর মাঝে Vertical Gap।

        children: [
          Container(color: Colors.pink),
          Container(color: Colors.lightGreen),
          Container(color: Colors.purple),
          Container(color: Colors.grey),
          Container(color: Colors.yellowAccent),
        ],
      ),
      */

      // ================= GridView.builder ================= Api call er somoy ata use kori

      // GridView.builder Lazy Loading ব্যবহার করে।যতটুকু Screen-এ দেখা যায়, ততটুকুই Load হয়।
      body: GridView.builder(
        itemCount: 20, // মোট কয়টি Item তৈরি হবে।
        // Grid-এর Layout নির্ধারণ করে।
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,// এক Row-তে কয়টি Item থাকবে।
          crossAxisSpacing: 10, // দুই Column-এর মাঝে Gap।
          mainAxisSpacing: 10,// দুই Row-এর মাঝে Gap।
        ),

        itemBuilder: (context, index) {// প্রতিটি Grid Item তৈরি করার জন্য। index wise
          return Column(// Column-এর Widget-গুলো Center-এ থাকবে।
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                    'https://static.thenounproject.com/png/598867-200.png',
                    height: 50, // Image-এর Height
                  ),
                ),

                decoration: BoxDecoration(// Container-এর Design
                  borderRadius: BorderRadius.circular(10),  // Corner গোল করার জন্য।

                  // Gradient Color
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.redAccent.shade100,
                    ],
                  ),
                ),
              ),


              const Text('Cash Out'),// Image-এর নিচের Text
            ],
          );
        },
      ),
    );
  }
}
