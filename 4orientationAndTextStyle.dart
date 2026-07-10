import 'package:flutter/material.dart';

class orientationAndText extends StatelessWidget {
  const orientationAndText({super.key});

  @override
  Widget build(BuildContext context) {

    // ================= MediaQuery =================
    Size screenSize = MediaQuery.of(context).size;// বর্তমান Screen-এর Size (Width & Height) বের করার জন্য।
    double screenW = screenSize.width;    // Screen-এর Width
    double screenH = screenSize.height;   // Screen-এর Height
    final Orientation orientation = MediaQuery.of(context).orientation; // Device Portrait নাকি Landscape তা জানার জন্য।
    return Scaffold(

      appBar: AppBar(
        title: const Text('Class 3'),
        backgroundColor: Colors.blue,
        centerTitle: true, // Title-কে Center-এ রাখে।
      ),

      body: Center(

        // যদি Portrait Mode হয় তাহলে Column দেখাবে,
        // না হলে Landscape Mode-এর জন্য Row দেখাবে।
        child: orientation == Orientation.portrait

        // ================= Portrait UI =================

            ? Column(
          children: [

            // বর্তমান Orientation দেখাবে।
            Text(
              orientation.toString(),
              style: const TextStyle(fontSize: 28),
            ),

            // ================= Text Widget =================

            Container(
              height: 100,
              width: 200,

              child: Text(
                'Helllo Hello Software is a full-service development firm providing scalable web and mobile applications, system integrations, SEO, and cloud solutions. They act as an outsourced IT team to build responsive, modern websites and applications designed to maximize your business conversions.',

                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),

                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,// Text বেশি হলে শেষে ... দেখাবে।
              ),
            ),

            // ================= RichText =================

            // একাধিক Style-এর Text একসাথে ekoi line e দেখানোর জন্য।
            RichText(
              text: const TextSpan(
                text: 'Hello',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: ' Shahrear',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),

            // আরেকটি RichText Example
            RichText(
              text: const TextSpan(
                text: 'Dont have account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                children: [

                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                ],
              ),
            ),

            const Text(
              'Without',
              style: TextStyle(fontSize: 25),
            ),

            Container(// Fixed Size Container
              height: 150,
              width: 150,
              color: Colors.red,
            ),

            const SizedBox(height: 20),

            // ================= MediaQuery Example =================

            Container(// Screen Size অনুযায়ী Responsive Container
              height: screenH * 0.16,
              width: screenW * 0.3,
              color: Colors.green,
            ),

            Text(// Screen Width অনুযায়ী Responsive Font Size
              'With MediaQuery',
              style: TextStyle(
                fontSize: screenW * 0.05,
              ),
            ),
          ],
        )

        // ================= Landscape UI =================

            : SingleChildScrollView(

          scrollDirection: Axis.horizontal,// Horizontal Scroll Enable করবে।

          child: Row(
            children: [

              Text(
                orientation.toString(),
                style: const TextStyle(fontSize: 28),
              ),

              Container(
                height: 100,
                width: 200,

                child: Text(
                  'Helllo Hello Software is a full-service development firm providing scalable web and mobile applications, system integrations, SEO, and cloud solutions. They act as an outsourced IT team to build responsive, modern websites and applications designed to maximize your business conversions.Hello Software is a full-service development firm providing scalable web and mobile applications, system integrations, SEO, and cloud solutions. They act as an outsourced IT team to build responsive, modern websites and applications designed to maximize your business conversions.',

                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),

                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              RichText(
                text: const TextSpan(
                  text: 'Hello',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Shahrear',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),

              RichText(
                text: const TextSpan(
                  text: 'Dont have account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              const Text(
                'Without',
                style: TextStyle(fontSize: 25),
              ),

              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),

              const SizedBox(width: 20),

              // MediaQuery ব্যবহার করে Responsive Size
              Container(
                height: screenH * 0.16,
                width: screenW * 0.3,
                color: Colors.green,
              ),

              Text(
                'With MediaQuery',
                style: TextStyle(
                  fontSize: screenW * 0.05,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
