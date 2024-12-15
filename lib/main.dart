import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("To Do List"),
        ),
        body: SafeArea(
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView(scrollDirection: Axis.vertical, children: [
                    ListTile(
                      leading: Icon(
                        Icons.food_bank,
                        color: Colors.black,
                        size: 60,
                      ),
                      title: Text(
                        "Feed your self",
                        style: TextStyle(
                          fontSize: 29,
                        ),
                      ),
                      subtitle: Text(
                        "Eat your lunch",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      trailing: Checkbox(
                        value: true, // يمكنك تغيير القيمة هنا (true or false)
                        onChanged: (bool? value) {
                          value = false;
                        },
                      ),
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.black,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.sports_football,
                        color: Colors.black,
                        size: 60,
                      ),
                      title: Text(
                        "Excersises",
                        style: TextStyle(
                          fontSize: 29,
                        ),
                      ),
                      subtitle: Text(
                        "Do some football",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      trailing: Checkbox(
                        value: true, // يمكنك تغيير القيمة هنا (true or false)
                        onChanged: (bool? value) {
                          value = false;
                        },
                      ),
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.black,
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
