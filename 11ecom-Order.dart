import 'package:flutter/material.dart';

class ecomorder extends StatefulWidget {
  const ecomorder({super.key});

  @override
  State<ecomorder> createState() => _ecomorderState();
}

class _ecomorderState extends State<ecomorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Ecom Order"),
        centerTitle: true,
      ),

      body: Column(
        children: [

          Stepper(

            connectorColor: MaterialStateProperty.all( Colors.red),
              currentStep: 2,

              steps: [


            Step(title: Text("Order Place"),content:TextField(
                decoration: InputDecoration(
                  hintText: "Enter Address",
                )
            ),),


            Step(title: Text("Order Confirmed "),content:SizedBox()),


            Step(title: Text("Order Delivered"),content:SizedBox()),


          ]),



        ]
      ),



    );
  }
}
