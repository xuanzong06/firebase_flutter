import 'package:firebase_flutter/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function? toggleView;
  SignIn({this.toggleView}); // this is constructor for class

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // final AuthService _auth = AuthService();
  final AuthService _auth = AuthService();
  //text field state
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: () async{
              widget.toggleView!();
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (val) {
                  //values change then do something
                  setState(() => email = val);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true, //密碼輸入時，不顯示出來
                onChanged: (val) {
                  //values change then do something
                  setState(()=> password = val);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () async{
                  print(email);
                  print(password);
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        // child: ElevatedButton(
        //   onPressed: () async {
        //     dynamic result = await _auth.signInAnon();
        //     if (result == null) {
        //       print('error signing in');
        //     }else{
        //       print('signed in');
        //       print(result); //return class.mUser object
        //       print(result.uid);//show uid information
        //     }
        //   },
        //   child: Text('Sign in anon'),
        // ),
      ),
    );
  }
}
