import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NewScreen extends StatefulWidget {
  // const NewScreen({ Key? key }) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    //  final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ecom App UI",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
        body: Container(
          // color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              //this is main containerC
              //borderRadius:BorderRadius.circular(15)olumn
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Items",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View More",
                      style: TextStyle(fontSize: 12, color: Colors.purple),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    children: [
                      card('images/lap1.jpg', "4", "45", "MAC Pro"),
                      card('images/lap2.jpg', "4", "55", "Dell NoteBook"),
                      card('images/lap3.jpg', "4.1", "41", "HP Elite Book"),
                      card('images/lap4.jpg', "4", "25", "Mac Air"),
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment(-1.0, -1.0),
                    child: Text("More Categories",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      small(
                        "Cloths",
                        "12",
                      ),
                      small(
                        "Electronics",
                        "134",
                      ),
                      small(
                        "Home Appliances",
                        "124",
                      ),
                      small(
                        "HouseHolds",
                        "18",
                      ),
                      small(
                        "Furniture",
                        "26",
                      ),
                      small(
                        "Others",
                        "2",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Items",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View More",
                        style: TextStyle(fontSize: 13, color: Colors.purple),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    children: [
                      gcard(context, 'images/mob1.jpg', "4", "45", "Iphone"),
                      gcard(context, 'images/mob2.jpg', "4", "45", "Iphone"),
                      gcard(context, 'images/mob3.jpg', "4", "45", "Iphone"),
                      gcard(context, 'images/mob4.jpg', "4", "45", "Iphone"),
                      gcard(context, 'images/mob5.jpg', "4", "45", "Iphone"),
                      gcard(context, 'images/mob6.jpg', "4", "45", "Iphone"),
                      gcard(context, 'images/note.jpg', "4", "45",
                          "SamSung Note"),
                      gcard(
                          context, 'images/s1pro.png', "4.1", "25", "Vivo S1"),
                      gcard(context, 'images/Tecno-Phantom.png', "4", "35",
                          "Techno Phantom"),
                      gcard(context, 'images/v15.png', "4.5", "45", "Vivo v15"),
                      gcard(context, 'images/v17.png', "4.0", "78", "Vivo v17"),
                      gcard(
                          context, 'images/v20se.png', "4", "24", "Vivo v20SE"),
                      gcard(context, 'images/v21.png', "4", "15", "Vivo v21"),
                      gcard(context, 'images/vivo.png', "4", "63", "Vivo"),
                      gcard(context, 'images/y31.png', "4", "15", "Vivo y31"),
                      gcard(context, 'images/y51.png', "4", "36", "Vivo y51"),
                      gcard(context, 'images/y1s.jpg', "4", "28", "Vivo y1s"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.purple,
                size: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black45,
                size: 25,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black45,
                size: 25,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black45,
                size: 25,
              ),
              label: 'Account',
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

Widget card(String img, String rating, String rev, String titles) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: InkWell(
      // borderRadius: BorderRadius.circular(20),
      splashColor: Colors.blue[400],
      onTap: () {
        print('Card tapped.');
      },
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.green[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: 300,
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  width: 300,
                  height: 280,
                  fit: BoxFit.cover,
                  image: AssetImage(img),
                ),
              ),
              // Image.asset(img),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(titles,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                            size: 15,
                          ),
                          Text("$rating ($rev reviews)"),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget small(
  String name,
  String qty,
) {
  return InkWell(
    borderRadius: BorderRadius.circular(20.0),
    splashColor: Colors.lightBlueAccent,
    onTap: () {
      print('Card tapped.');
    },
    child: Container(
      margin: EdgeInsets.all(5),
      // height: 5,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        // color: Colors.green[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      // decoration: BoxDecoration(color: Colors.green[200]),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 7, right: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.closed_caption_sharp,
              color: Colors.purple,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text("$qty items", style: TextStyle(fontSize: 10)),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget gcard(context, String img, String rating, String rev, String titles) {
  return Expanded(
    child: Container(
      width: MediaQuery.of(context).size.width * .30,
      height: MediaQuery.of(context).size.height * .20,
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              // width: 75,
              // height: 150,
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
          // Image.asset(img),
          SizedBox(
            height: 4,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(titles,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 8,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 8,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 8,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 8,
                      ),
                      Text("$rating ($rev reviews)"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
