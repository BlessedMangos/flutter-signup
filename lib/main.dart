import 'package:flutter/material.dart';

void main() {
  runApp(SignupApp());
}

class SignupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          backDrop(context),
          signupCard(context),
        ],
      ),
    );
  }

  Widget backDrop(BuildContext context) {
    return Container(
      height: screenHeight,
      color: Colors.blue[400],
    );
  }

  Widget signupCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
      child: Center(
        child: SizedBox(
          height: 300,
          width: 400,
          child: Card(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password'
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
