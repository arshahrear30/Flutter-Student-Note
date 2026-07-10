import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Class-1'),
        backgroundColor: Colors.blue,
      ),



      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,  // Column-এর সকল Widget-কে Center-এ রাখে।

          children: [

            Align(
                alignment: Alignment.topRight,
                child: Text('Hello world 2 ',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
                ),
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                )),

            Container(

              // padding: EdgeInsets.all(16), // Container-এর ভিতরের Space
              // margin: EdgeInsets.all(20),  // Container-এর বাইরের Space
              alignment: Alignment.center,// Child-কে Center-এ রাখে।
              width: 100,
              height: 100,
              transform: Matrix4.rotationZ(0.3), // Container Rotate করার জন্য।

              decoration: BoxDecoration(   // Container-এর Decoration
                color: Colors.deepPurple,

                borderRadius: BorderRadius.circular(10), // Corner গোল করার জন্য।

                border: Border.all(  // Border দেওয়ার জন্য।
                  width: 2,
                  color: Colors.red,
                ),

                boxShadow: [ // Shadow দেওয়ার জন্য।
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(10, 5),
                    blurRadius: 8,
                  ),
                ],
              ),

              child: Text(  // Container-এর ভিতরের Widget
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(height: 20),

            // ==================== Profile Card ====================

            Container(
              margin: EdgeInsets.all(16), // বাইরের Space
              padding: EdgeInsets.all(12), // ভিতরের Space

              decoration: BoxDecoration(
                color: Colors.white, // Card-এর Background Color
                borderRadius: BorderRadius.circular(16), // Corner Round করার জন্য।

                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                  ),
                ],
              ),

              child: Row(  // Row Widget Horizontal ভাবে Child রাখে।
                children: [
                  CircleAvatar( // গোলাকার Image দেখানোর জন্য।
                    radius: 50,

                    // Internet থেকে Image Load করার জন্য।
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19K2YX61HeCH6hIDzoz73rOZdHucCH1LU1A&s',
                    ),
                  ),

                  SizedBox(width: 12),  // Image ও Text-এর মাঝে Gap

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,// Text-গুলো Left Align হবে।

                    children: [
                      Text(
                        'Dr. Rahman',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        'Cardiologist',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Stack Widget একটার উপর আরেকটা Widget বসানোর জন্য।
            Stack(
              alignment: Alignment.center,
              children: [

                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),

                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),

            SizedBox(height: 10),

            // ==================== Positioned Example ====================

            Stack(
              alignment: Alignment.center,
              children: [

                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                ),

                // Stack-এর ভিতরে Widget-এর Position নির্ধারণ করার জন্য।
                Positioned(
                  right: 10,// Right থেকে 10 Pixel দূরে।
                  bottom: 10, // Bottom থেকে 10 Pixel দূরে।

                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
