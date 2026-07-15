import 'package:flutter/material.dart';
import 'package:modulepro/5images.dart';
import 'package:modulepro/6inputs.dart';
import 'package:modulepro/9widget-On-widget.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({super.key});

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:   AppBar(
          title: Text('Tab bar'),
          backgroundColor: Colors.orange,
          bottom: TabBar(

              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),

              ),

              indicatorPadding: EdgeInsets.all(1),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.purple,
              tabs: [
                Tab(icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(icon: Icon(Icons.favorite_rounded),
                  text: 'Fav',
                ),
                Tab(icon: Icon(Icons.settings),
                  text: 'Setting',
                ),
              ]),
        ),

        body: TabBarView(
            controller: _tabController,
            children: [


              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.red,
              //   child: Center(child: Text('Home')),
              // ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.blue,
              //   child: Center(child: Text('Fav')),
              // ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.purple,
              //   child: Center(child: Text('Setting')),
              // ),


              CityCard(//home
                imageURL:
                'https://static.vecteezy.com/system/resources/thumbnails/040/890/255/small/ai-generated-empty-wooden-table-on-the-natural-background-for-product-display-free-photo.jpg',
                title: 'Sylhet ',
                rating: '4.9',
              ),


              Input(),//favorite_rounded


              Column(//settings
                children: [
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtdUhaC5rpDkzKbopf5UF90ccKowzRiYxE8A&s'),
                  Text('Custom UI')
                ],
              )

            ]));
  }
}
