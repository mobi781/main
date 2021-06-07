import 'package:flutter/material.dart';

class ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Container(
                child: Text(
                  "Form",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              actions: [
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 30.0,
                ),
              ],
            ),
            body: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/a1.jpg'),
                    radius: 20,
                  ),
                  title: Text('Iphone12'),
                  subtitle: Text('5.0 (23 Reviews)'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("1200"),
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/a1.jpg'),
                    radius: 20,
                  ),
                  title: Text('Iphone12'),
                  subtitle: Text('5.0 (23 Reviews)'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text('1200')],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/a1.jpg'),
                    radius: 20,
                  ),
                  title: Text('Iphone12'),
                  subtitle: Text('5.0 (23 Reviews)'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('1200'),
                    ],
                  ),
                )
              ],
            )));
  }
}
