import 'package:flutter/material.dart';

class login extends StatefulWidget {


  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override

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
          FlatButton( onPressed: () {  },
              child: const Text("Sign in")),
          const SizedBox(height: 30),
          FlatButton( onPressed: () {
            setState(() {
              Navigator.pushNamed(context, '/signup');
            });

          },
              child: const Text("Sign up"))
        ],
      ),

    );
  }
}
