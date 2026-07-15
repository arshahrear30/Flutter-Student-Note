import 'package:flutter/material.dart';
class navigator_pop extends StatefulWidget {
  final String name;
  final int price;
  final Color color;
  final VoidCallback onTap;

  const navigator_pop({super.key, required this.name, required this.price, required this.color, required this.onTap});

  @override
  State<navigator_pop> createState() => _navigator_popState();
}

class _navigator_popState extends State<navigator_pop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Card(
          color: widget.color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.name,style: TextStyle(fontSize: 30),),
              Text(widget.price.toString(),style: TextStyle(fontSize: 30),),

              ElevatedButton(onPressed: widget.onTap, child: Text('Submit')),



              ElevatedButton(onPressed: (){
                Navigator.pop(context);//---বর্তমান Screen বন্ধ করে আগের Screen-এ ফিরে যায়।
              }, child: Text('Back')),



            ],
          ),
        ),
      ),
    );
  }
}
