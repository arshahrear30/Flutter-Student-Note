import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('List'),
        backgroundColor: Colors.blue,
      ),

      // ================= ListView.separated =================
      // ListView.separated ব্যবহার করা হয় যখন
      // প্রতিটি Item-এর মাঝে আলাদা Separator (Divider) দেখাতে হয়।
      body: ListView.separated(

        itemCount: 20,// মোট কতগুলো Item তৈরি হবে।
        itemBuilder: (context, index) {// প্রতিটি List Item তৈরি করার জন্য।

          return Card(

            child: ListTile(// Card Widget সুন্দর Shadow সহ Container তৈরি করে।

              title: Text('Taufiq $index'),
              subtitle: const Text('01792945445'),
              leading: const Icon(Icons.phone),// বাম পাশে Icon
              trailing: const Icon(// ডান পাশে Icon
                Icons.delete,
                color: Colors.red,
              ),
            ),
          );
        },

        // প্রতিটি Item-এর মাঝখানে Separator যোগ করার জন্য।
        separatorBuilder: (context, index) {

          return const Divider(

            thickness: 1,// Divider-এর Thickness
            color: Colors.grey,// Divider-এর Color
          );
        },
      ),

      /*
      ================= ListView.builder =================

      ListView.builder() Lazy Loading ব্যবহার করে।

      অর্থাৎ,Screen-এ যতটুকু Item দেখা যায়,শুধুমাত্র ততটুকুই Load হবে।
      বড় List (১০০০+, ১০,০০০+ Item)-এর জন্য এটি Best।

      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {  // প্রতিটি Item তৈরি করবে।

          return Card(
            child: ListTile(

              title: Text('Taufiq $index'),
              subtitle: Text('01792945445'),
              leading: Icon(Icons.phone),
              trailing: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          );
        },
      );
      */

      /*
      ================= Normal ListView =================
      body: ListView(//Normal ListView-এ সব Widget একসাথে Load হয়। ছোট List-এর জন্য ব্যবহার করা হয়।

        children: [
          Card(
            child: ListTile(
              title: Text('Taufiq'),
              subtitle: Text('01792945445'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Taufiq'),
              subtitle: Text('01792945445'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete),
            ),
          ),

        ],
      );
      */

    );
  }
}
