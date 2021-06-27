import 'package:flutter/material.dart';
// import 'package:flutter_application_2/screens/calc.dart';
// import 'package:flutter_application_2/screens/Electronics.dart';
// import 'package:flutter_application_2/screens/elist.dart';
import 'package:flutter_application_2/screens/todos.dart';
// import 'screens/signup.dart';

// import 'nav.dart';

void main() {
  runApp(MyApp());
}

//" flutter run -d chrome --release" this command will work instead of flutter run
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Todos());
  }
}

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Container(
//             child: Text(
//               "Todos",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           actions: [
//             Icon(
//               Icons.notifications,
//               color: Colors.black,
//               size: 30.0,
//             ),
//           ],
//         ),
//         body: Todos(),
//         // body: Container(
//         //   child: Center(
//         //     child: Column(
//         //       // mainAxisAlignment: MainAxisAlignment.center,
//         //       // crossAxisAlignment: CrossAxisAlignment.center,
//         //       children: [
//         //         ElevatedButton(
//         //           // style: style,
//         //           onPressed: () {
//         //             Navigator.push(context,
//         //                 MaterialPageRoute(builder: (context) => SignUp()));
//         //           },
//         //           child: const Text('SIGNUP'),
//         //         ),
//         //         ElevatedButton(
//         //           // style: style,
//         //           onPressed: () {
//         //             Navigator.push(context,
//         //                 MaterialPageRoute(builder: (context) => Electronics()));
//         //           },
//         //           child: const Text('ECOMMERCE'),
//         //         ),
//         //         ElevatedButton(
//         //           // style: style,
//         //           onPressed: () {
//         //             Navigator.push(context,
//         //                 MaterialPageRoute(builder: (context) => ListViews()));
//         //           },
//         //           child: const Text('Listing'),
//         //         ),
//         //         ElevatedButton(
//         //           // style: style,
//         //           onPressed: () {
//         //             Navigator.push(context,
//         //                 MaterialPageRoute(builder: (context) => Calc()));
//         //           },
//         //           child: const Text('Calc'),
//         //         ),
//         //         TextButton(
//         //           style: ButtonStyle(
//         //             backgroundColor:
//         //                 MaterialStateProperty.all<Color>(Colors.purple[300]),
//         //           ),
//         //           onPressed: () {
//         //             Navigator.push(context,
//         //                 MaterialPageRoute(builder: (context) => Todos()));
//         //           },
//         //           child: Text('todos', style: TextStyle(color: Colors.white)),
//         //         )
//         //       ],
//         //     ),
//         //   ),
//         // )
//       ),
//     );
//   }
// }

// //     home: Scaffold(
// //   appBar: AppBar(
// //     title: Container(
// //       child: Text(
// //         "Form",
// //         style: TextStyle(
// //           color: Colors.black,
// //           fontWeight: FontWeight.bold,
// //         ),
// //       ),
// //     ),
// //     centerTitle: true,
// //     backgroundColor: Colors.white,
// //     actions: [
// //       Icon(
// //         Icons.favorite,
// //         color: Colors.black,
// //         size: 30.0,
// //       ),
// //     ],
// //   ),
// //   body: Center(
// //     child: ElevatedButton(
// //       // style: style,
// //       onPressed: () {
// //         Navigator.push(
// //             context, MaterialPageRoute(builder: (context) => SignUp()));
// //       },
// //       child: const Text('Enabled'),
// //     ),
// //   ),
// // )
