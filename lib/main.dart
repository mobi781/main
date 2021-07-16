import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_application_2/screens/Electronics.dart';
// import 'package:flutter_application_2/screens/elist.dart';
// import 'screens/signup.dart';

// import 'nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

//" flutter run -d chrome --release" this command will work instead of flutter run
class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text("You Got Error");
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(home: Login());
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Text("Loading...");
      },
    );
    // return MaterialApp(home: Login());
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text("hello dear"),
          ],
        ),
      ),
    )));
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
