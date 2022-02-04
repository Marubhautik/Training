import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';
import 'signup.dart';
import 'homepage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const emailauth());
}



class emailauth extends StatelessWidget {
  const emailauth({Key? key}) : super(key: key);

  @override



  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      routes: {
        '/signup':  (_)=>singup(),
        '/homepage':(_)=>Homepage()
      },
    );

  }
}
