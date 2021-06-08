import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            "Cell Phones",
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
            Icons.notification_add_outlined,
            color: Colors.black,
            size: 30.0,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Please Search Here...',
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.blueGrey,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                  ),
                )),
          ),
          Text(
            'History',
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  phones("iPhone12pro", 'images/mob1.jpg', 3.8, 34, '1400'),
                  phones("iPhone12", 'images/mob2.jpg', 4.5, 34, '1300'),
                  phones("iPhone12", 'images/mob3.jpg', 4.0, 33, '1250'),
                  phones("iPhone11", 'images/mob4.jpg', 4.5, 32, '1000'),
                  phones(
                      "iPhone12pro 64GB", 'images/mob5.jpg', 5.0, 23, '1500'),
                  phones("Nokia", 'images/mob6.jpg', 4.5, 34, '100'),
                  phones("iPhone12", 'images/mob2.jpg', 4.5, 34, '1300'),
                  phones("iPhone12", 'images/mob3.jpg', 4.0, 33, '1250'),
                  phones("iPhone11", 'images/mob4.jpg', 4.5, 32, '1000'),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget phones(var name, var source, var point, var rev, var price) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(source),
        radius: 20,
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellowAccent,
          ),
          Text('$point ($rev 23 Reviews)'),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text('\$' + price)],
      ),
    );
  }
}
