import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class singup extends StatefulWidget {
  const singup({Key? key}) : super(key: key);

  @override
  _singupState createState() => _singupState();
}

class _singupState extends State<singup> {

  final _auth=FirebaseAuth.instance;
  late String email;
  late String password;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-MAIL AUTHENTICATION"),
        centerTitle: true,
        backgroundColor:Colors.deepOrangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText:  "Email",
              hintText: "Enter your Email",
            ),
            onChanged:(value){
              setState(() {
                email = value;

              });
            },
          ),
          TextField(
            decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Enter your password "
            ),
            onChanged: (value){
              setState(() {
                password = value;
              });
            },
          ),
          const SizedBox(height: 30),
          FlatButton( onPressed: () async {
           try{
             final newuser =await _auth.createUserWithEmailAndPassword(
                 email: email,
                 password: password);
             if(newuser!=null){
               Navigator.pushNamed(context, '/homepage');
             }

           }
           catch(e){
             print(e);
           }

          },
              child: const Text("Sign up"))
        ],
      ),

    );
  }
}
