import 'package:flutter/material.dart';
import 'package:modulepro/6inputs.dart';
import 'package:modulepro/14.2Navigator_pop.dart';


/// Navigator.push() - নতুন Screen-এ যাওয়ার জন্য। -- বর্তমান Screen-এর উপর নতুন Screen Open করে।
/// Navigator.pushReplacement() - নতুন Screen Open করবে এবং আগের Screen Remove করবে।
// Login → Home / Splash → Home   -- Back করলে Login-এ আর যাবে না।
// Navigator.pushAndRemoveUntil() - সব Screen Remove করে নতুন Screen Open করবে।

/// Navigator.pop() - বর্তমান Screen বন্ধ করে আগের Screen-এ ফিরে যায়।
/// MaterialPageRoute - কোন Screen Open হবে তা নির্ধারণ করে।


class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navi'), backgroundColor: Colors.blue),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            ElevatedButton(
              onPressed: () {
                Navigator.push(//---নতুন Screen-এ যাওয়ার জন্য। -- বর্তমান Screen-এর উপর নতুন Screen Open করে।
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigator_pop(
                      name: 'xy product',
                      price: 500,
                      color: Colors.orange,
                      onTap: () {
                        print('Submitted');
                      },
                    ),
                  ),
                );
              }, child: Text('Home'),
            ),



            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Saved successfully')));
                Navigator.pushReplacement(//--নতুন Screen Open করবে এবং আগের Screen Remove করবে।
                  context,
                  MaterialPageRoute(builder: (context) => Input()),
                );
              },
              child: Text('About'),
            ),



            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');//----------------------
              },
              child: Text('about - 2'),
            ),



            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/about');//--নতুন Screen Open করবে এবং আগের Screen Remove করবে।
              },
              child: Text('about - 3'),
            ),


          ],
        ),
      ),
    );
  }
}
