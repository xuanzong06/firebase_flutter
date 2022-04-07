import 'package:firebase_flutter/screens/authenticate/register.dart';
import 'package:firebase_flutter/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn); //reverse object is a = true !a = false ; if a = false , !a = true
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggleView: toggleView); // 自定義屬性 可以自己命名
    }else{
      return Register(toggleView: toggleView);
    }
    // return Container(
    //   child: Register(),
      // child: SignIn(),
      // child: Text('Hee'),
    // );
  }
}
