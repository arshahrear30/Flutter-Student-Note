import 'package:flutter/material.dart';

/// Custom Widget Example //widget এর উপর আরেকটা widget এন্ড custom widget create

class CutomWidget extends StatelessWidget {
  const CutomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Custom Widget'),
        backgroundColor: Colors.orange,
      ),

      body: Column(
        children: [

          CityCard(
            imageURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNE0fhlQgpWjNNtUnugodaTpsBAhO7H3AqQ&s',
            title: 'Cox\'s Bazar',
            rating: '4.8',
          ),

          const SizedBox(height: 10),

          CityCard(
            imageURL:
            'https://bdscenictours.b-cdn.net/wp-content/uploads/2019/11/Sylhet-Scenic-Tour.jpg',
            title: 'Sylhet',
            rating: '4.9',
          ),

          const SizedBox(height: 10),

          CityCard(
            imageURL:
            'https://objectstorage.ap-dcc-gazipur-1.oraclecloud15.com/n/axvjbnqprylg/b/V2Ministry/o/office-bandarban/2026/2/44ec2679-fd17-44cf-9c17-edbb8fb81d42.jpg',
            title: 'Bandarban',
            rating: '4.9',
          ),
        ],
      ),
    );
  }
}





/// এখানে একই ডিজাইনের Card বারবার ব্যবহার করার জন্য CityCard নামে একটি Custom Widget তৈরি করা হয়েছে।

class CityCard extends StatelessWidget {

  // বাইরে থেকে Data নেওয়ার জন্য Variable
  final String imageURL;
  final String title;
  final String rating;

  // Constructor //Constructor যা Object তৈরি হওয়ার সাথে সাথে Automatically Call হয়।
  // Constructor-এর নাম Class-এর নামের মতোই হবে।
  const CityCard({
    super.key,
    required this.imageURL,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),// Corner গোল করার জন্য
      ),

      child: ClipRRect(      // Child Widget-কে Rounded Corner অনুযায়ী কেটে (Clip) দেয়

        borderRadius: BorderRadius.circular(24),

        child: Stack( //Stack--  Widget-এর উপর Widget বসায়।Positioned বলে দেয় কোন Widget কোথায় থাকবে।


          children: [   // একটার উপর আরেকটা Widget বসানোর জন্য Stack

            // ================= Background Image =================

            SizedBox(
              height: 500,
              width: 500,
              child: Image.network( // Internet থেকে Image Load করবে।
                imageURL,
                fit: BoxFit.cover,// পুরো Container Fill করবে।
              ),
            ),

            Container(// Image-এর উপর হালকা কালো Layer //Dark Overlay
              height: 265,
              color: Colors.black38,
            ),

            // ================= Title =================

            Positioned( //Positioned শুধুমাত্র Stack-এর ভিতরে ব্যবহার করা যায়।
              top: 20,// উপরের দিক থেকে 20px
              left: 20,// বাম দিক থেকে 20px

              child: Text(
                title,

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // ================= Rating =================

            Positioned(
              top: 20,
              right: 20,

              child: Text(
                '⭐ $rating',

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),

              ),

            ),


          ],
        ),
      ),
    );
  }
}
