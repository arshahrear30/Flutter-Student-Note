import 'package:flutter/material.dart';

class Animations extends StatefulWidget {
  const Animations({super.key});

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  bool Isexpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic animations'),
        backgroundColor: Colors.orange,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [


            // AnimatedContainer
            // Size, Color, Border ইত্যাদি Animate করার জন্য
            InkWell(
              onTap: () {
                setState(() {
                  Isexpanded = !Isexpanded;
                });
              },

              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                width: 250,
                height: Isexpanded ? 250 : 150,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),

            SizedBox(height: 10),


            InkWell(
              onTap: () {
                setState(() {
                  Isexpanded = !Isexpanded;
                });
              },
              child: Container(
                width: 250,
                height: Isexpanded ? 250 : 150,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
           SizedBox(height: 30),
           //----------------------------

            InkWell(
              onTap: () {
                setState(() {
                  Isexpanded = !Isexpanded;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                width: Isexpanded ? 250 : 150,
                height: Isexpanded ? 250 : 150,
                decoration: BoxDecoration(
                  color: Isexpanded ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.circular(Isexpanded ? 30 : 0),
                ),
              ),
            ),

            SizedBox(height: 30),


            AnimatedOpacity(
              opacity: Isexpanded ? 1 : 0,
              duration: Duration(seconds: 2),
              child: Card(
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello', style: TextStyle(fontSize: 20)),
                ),
              ),
            ),




            SizedBox(height: 30,),

            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1500),
              duration: Duration(seconds: 10),
              builder: (context, value, child) {
                return Text(
                  '৳ ${value.toInt()}',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                );
              },
            ),


            SizedBox(height: 30,),

            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 0.9),
              duration: Duration(seconds: 10),
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearProgressIndicator(value: value, minHeight: 10),
                );
              },
            ),
            SizedBox(height: 30),


            // AnimatedAlign
            // Widget Position পরিবর্তন করার জন্য
            AnimatedAlign(
              alignment: Isexpanded ? Alignment.topRight : Alignment.centerLeft,
              duration: Duration(seconds: 3),
              child: Image.network(
                height: 50,

                'https://static.vecteezy.com/system/resources/thumbnails/044/012/937/small/side-view-white-suv-car-png.png',
              ),
            ),

            SizedBox(height: 30),




            // Hero Animation
            // এক Screen থেকে অন্য Screen এ Smooth Transition --real project er somoy etar kaz acey ..
            //====================================================

            //           Hero(
            //               tag: "car",
            //
            //               child: Image.network(
            //                 'https://static.vecteezy.com/system/resources/thumbnails/044/012/937/small/side-view-white-suv-car-png.png',
            //                 height: 80,
            //               ),
            //             ),



            // AnimatedSwitcher
            // Widget Change Animation
            //====================================================
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),

              child: Isexpanded
                  ? const Icon(
                      Icons.favorite,
                      key: ValueKey(1),
                      color: Colors.red,
                      size: 70,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      key: ValueKey(2),
                      size: 70,
                    ),
            ),

            SizedBox(height: 30),



            // AnimatedScale
            // Widget Zoom In / Out
            //====================================================
            AnimatedScale(
              scale: Isexpanded ? 2 : 1,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(size: 50),
            ),

            SizedBox(height: 30),



            // AnimatedRotation
            // Widget Rotate করার জন্য
            //====================================================
            AnimatedRotation(
              turns: Isexpanded ? 1 : 0,
              duration: const Duration(seconds: 2),
              child: const Icon(Icons.refresh, size: 60),
            ),
            SizedBox(height: 30),




          ],
        ),
      ),
    );
  }
}
