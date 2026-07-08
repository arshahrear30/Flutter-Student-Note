import 'package:flutter/material.dart';

class c3  extends StatelessWidget {
  const c3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        body: Center(
          child: Column(
            children: [

              SizedBox(
                height: 20,
              ),

              SizedBox(
                height:50,
                width: double.infinity,//pura width ta use hoibo

                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.red,

                    elevation: 10,//shadow er jayga fix .
                    shadowColor: Colors.red,
                
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.black),
                    ),
                
                  ),
                
                    onPressed: (){}, child: Text("Elevated Button")),
              ),

              SizedBox(
                height: 20,
              ),


              OutlinedButton(//Border থাকে, Background থাকে না।

                  onPressed: (){}, child: Text("Outlined Button")),

              FilledButton(//FilledButton.tonal use korley more light colour produce korey
                onPressed: () {},
                child: Text("Filled Button"),
              ),//Material 3 Google latest design-এর নতুন Primary Button।
              TextButton(

                  onPressed: (){}, child: Text("Text Button")),

              IconButton(//AppBar বা ছোট Action-এর জন্য।

                  onPressed: (){}, icon: Icon(Icons.man,color: Colors.red,size: 50,)),


              BackButton(),//App-এর Back Navigation-এর জন্য।
              CloseButton(),//App-এর Close Button-এর জন্য।


              //User er click track korar jonno .

              GestureDetector( //User key onek deep click track korar jonno .
                onTap: (){
                  print('on tap');
                },

                onLongPress: (){
                  print('on long tap');
                },

                onDoubleTap: (){
                  print('on Double tap');
                },

                child:Text('Gesture Deep Tap Detector',style: TextStyle(fontSize: 20),),

              ),

              InkWell(
                onTap: (){
                  print('on tap');
                },

                onLongPress: (){
                  print('on long tap');
                },

                onDoubleTap: (){
                  print('on Double tap');
                },

                child:Text('InkWell normal Tap Detector',style: TextStyle(fontSize: 20),),

              ),

              DropdownButton<String>(
                dropdownColor: Colors.white,

                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),

                borderRadius: BorderRadius.circular(20),

                items: [
                  DropdownMenuItem(
                    value: "3", child: Text("Afghanistan"),
                  ),
                  DropdownMenuItem(
                    value: "1", child: Text("Bangladesh"),
                  ),
                  DropdownMenuItem(
                    value: "2", child: Text("Iran"),
                  ),

                ],

                onChanged: (value) {Text('Hello');},
              ),


            ],

          ),

        ),

        floatingActionButton: FloatingActionButton(

            onPressed: (){}, child: Icon(Icons.add)),

      ),
    );
  }
}
