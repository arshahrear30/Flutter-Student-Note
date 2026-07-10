import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meo Meo'),
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network('https://www.laurewanders.com/wp-content/uploads/2023/02/Things-to-do-in-Coxs-Bazar-33.jpg',

              ),

              //Image.asset('asset/YT.png'),  //yaml file e asset add and asset file create in lib folder

            ],
          ),
        ),
      ),
    );
  }
}
