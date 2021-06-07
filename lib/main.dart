import 'package:flutter/material.dart';
import 'screens/signup.dart';

// import 'nav.dart';

void main() {
  runApp(MyApp());
}

//" flutter run -d chrome --release" this command will work instead of flutter run
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "HOME PAGE",
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
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                ElevatedButton(
                  // style: style,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: const Text('SIGNUP'),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  // style: style,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: const Text('ECOMMERCE'),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  // style: style,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: const Text('LISINT'),
                ),
              ],
            ),
          ),
        ));
  }
}

//     home: Scaffold(
//   appBar: AppBar(
//     title: Container(
//       child: Text(
//         "Form",
//         style: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//     centerTitle: true,
//     backgroundColor: Colors.white,
//     actions: [
//       Icon(
//         Icons.favorite,
//         color: Colors.black,
//         size: 30.0,
//       ),
//     ],
//   ),
//   body: Center(
//     child: ElevatedButton(
//       // style: style,
//       onPressed: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => SignUp()));
//       },
//       child: const Text('Enabled'),
//     ),
//   ),
// )
