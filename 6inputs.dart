import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  //====================================
  // Variable Declaration
  //====================================

  bool check = false; // Checkbox & FilterChip
  bool switchVal = false; // Switch

  int gender = 1; // Radio Button

  double slider = 30; // Slider

  RangeValues range = const RangeValues(20, 80); // RangeSlider

  String? country = "Bangladesh"; // Dropdown

  DateTime? date; // Date Picker

  TimeOfDay? time; // Time Picker

  final TextEditingController name = TextEditingController();

  final TextEditingController pass = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Input Widgets"),
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //=================================================
            // TextField
            // User Name Input
            //=================================================
            const Text(
              "1. TextField (Name Input)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            TextField(
              controller: name,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
                hintText: "Enter Your Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 20),

            //=================================================
            // Password TextField
            //=================================================
            const Text(
              "2. Password Input",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            TextField(
              controller: pass,
              obscureText: true,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),

            const SizedBox(height: 20),

            //=================================================
            // TextFormField
            //=================================================
            const Text(
              "3. TextFormField",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),

            const Divider(),

            //=================================================
            // Checkbox
            // Multiple Selection
            //=================================================
            const Text(
              "4. Checkbox",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Checkbox(
              value: check,

              onChanged: (value) {
                setState(() {
                  check = value!;
                });
              },
            ),

            //=================================================
            // CheckboxListTile
            //=================================================
            CheckboxListTile(
              value: check,

              title: const Text("Accept Terms & Conditions"),

              onChanged: (value) {
                setState(() {
                  check = value!;
                });
              },
            ),

            const Divider(),

            //=================================================
            // Radio Button
            // Single Selection
            //=================================================
            const Text(
              "5. Radio Button",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            RadioListTile<int>(
              value: 1,
              groupValue: gender,
              title: const Text("Male"),

              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            RadioListTile<int>(
              value: 2,
              groupValue: gender,
              title: const Text("Female"),

              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            const Divider(),

            //=================================================
            // Switch
            //=================================================
            const Text(
              "6. Switch",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Switch(
              value: switchVal,

              onChanged: (value) {
                setState(() {
                  switchVal = value;
                });
              },
            ),

            SwitchListTile(
              value: switchVal,

              title: const Text("Dark Mode"),

              onChanged: (value) {
                setState(() {
                  switchVal = value;
                });
              },
            ),

            const Divider(),

            //=================================================
            // Slider
            //=================================================
            Text(
              "7. Slider : ${slider.toStringAsFixed(0)}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            Slider(
              value: slider,

              min: 0,

              max: 100,

              onChanged: (value) {
                setState(() {
                  slider = value;
                });
              },
            ),

            const Divider(),

            //=================================================
            // Range Slider
            //=================================================
            Text(
              "8. Range Slider : ${range.start.round()} - ${range.end.round()}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            RangeSlider(
              values: range,

              min: 0,

              max: 100,

              onChanged: (value) {
                setState(() {
                  range = value;
                });
              },
            ),

            const Divider(),

            //=================================================
            // Dropdown Button
            //=================================================
            const Text(
              "9. Dropdown Button",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            DropdownButton<String>(
              value: country,

              isExpanded: true,

              items: const [
                DropdownMenuItem(
                  value: "Bangladesh",
                  child: Text("Bangladesh"),
                ),

                DropdownMenuItem(value: "India", child: Text("India")),

                DropdownMenuItem(value: "Pakistan", child: Text("Pakistan")),
              ],

              onChanged: (value) {
                setState(() {
                  country = value;
                });
              },
            ),

            const Divider(),

            //=================================================
            // Date Picker
            //=================================================
            ElevatedButton(
              onPressed: () async {
                final d = await showDatePicker(
                  context: context,

                  firstDate: DateTime(2020),

                  lastDate: DateTime(2030),

                  initialDate: DateTime.now(),
                );

                if (d != null) {
                  setState(() {
                    date = d;
                  });
                }
              },

              child: const Text("Pick Date"),
            ),

            Text(date == null ? "No Date Selected" : "$date"),

            const SizedBox(height: 20),

            //=================================================
            // Time Picker
            //=================================================
            ElevatedButton(
              onPressed: () async {
                final t = await showTimePicker(
                  context: context,

                  initialTime: TimeOfDay.now(),
                );

                if (t != null) {
                  setState(() {
                    time = t;
                  });
                }
              },

              child: const Text("Pick Time"),
            ),

            Text(time == null ? "No Time Selected" : time!.format(context)),

            const Divider(),

            //=================================================
            // Search Bar (Material 3)
            //=================================================
            const SearchBar(hintText: "Search Here..."),

            const Divider(),

            //=================================================
            // Chips
            //=================================================
            const Text(
              "10. Chips",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const ChoiceChip(label: Text("Flutter"), selected: true),

            const SizedBox(height: 10),

            FilterChip(
              label: const Text("Firebase"),
              selected: check,
              onSelected: (value) {
                setState(() {
                  check = value;
                });
              },
            ),

            const SizedBox(height: 10),

            InputChip(label: const Text("Input Chip"), onPressed: () {}),

            const SizedBox(height: 10),

            ActionChip(label: const Text("Action Chip"), onPressed: () {}),

            const SizedBox(height: 30),

            //=================================================
            // Autocomplete
            // Typing করলে Suggestion দেখাবে
            //=================================================
            const Text(
              "Autocomplete",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }

                return <String>[
                  'Bangladesh',
                  'India',
                  'Pakistan',
                  'Nepal',
                  'Bhutan',
                  'Sri Lanka',
                ].where((String option) {
                  return option.toLowerCase().contains(
                    textEditingValue.text.toLowerCase(),
                  );
                });
              },

              onSelected: (String value) {
                print(value);
              },
            ),

            const SizedBox(height: 30),

            //=================================================
            // SearchBar
            // Search করার জন্য
            //=================================================
            const Text(
              "SearchBar",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SearchBar(
              hintText: "Search Here...",
              leading: const Icon(Icons.search),

              trailing: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
