import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "USER DASHBOARD",
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
              Icons.notifications,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  // Image.asset('images/a1.jpg', fit: BoxFit.fitWidth),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download.png'),
                    radius: 75,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text("USER",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35)),
                      Text("abc@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text(
                        "Logout",
                        style: TextStyle(color: Colors.purpleAccent),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Text("Account Information",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent,
                    fontSize: 35,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 25,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Full Name",
                        labelText: "Name",
                      ),
                    ),
                    TextFormField(
                      // obscureText: true, This is use for to hide password
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Phone No.",
                        labelText: "Phone NO.",
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Address",
                        labelText: "Address",
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Date of Birth",
                        labelText: "DOB",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// home: Scaffold(
//     appBar: AppBar(
//       title: Container(
//         child: Text(
//           "Form",
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       centerTitle: true,
//       backgroundColor: Colors.white,
//       actions: [
//         Icon(
//           Icons.favorite,
//           color: Colors.black,
//           size: 30.0,
//         ),
//       ],
//     ),
//     body: Row(
//       children: [
//         Container(
//           margin: const EdgeInsets.all(10.0),
//           width: 200, //MediaQuery.of(context).size.width,
//           height: 200,
//           decoration: BoxDecoration(
//               // color: Colors.blueGrey.withOpacity(0.5),
//               borderRadius: BorderRadius.circular(30)),
//           child: Row(
//             children: [
//               Container(
//                   child: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                     'https://png.pngtree.com/png-clipart/20200224/original/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_5247852.jpg'),
//                 radius: 75,
//               )
//                   // child: Image.network(
//                   //     'https://png.pngtree.com/png-clipart/20200224/original/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_5247852.jpg'),
//                   ),

//               Container(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'User',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('abc@ymail.com'),
//                   Text('Logout', style: TextStyle(color: Colors.purple))
//                 ],
//               )),
//               // Container(alignment: Alignment.bottomCenter, child: Nav())
//             ],
//           ),
//         ),
//       ],
//     )));
