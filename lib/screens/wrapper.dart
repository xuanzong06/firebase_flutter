import 'package:firebase_flutter/screens/authenticate/authenticate.dart';
import 'package:firebase_flutter/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //return either Home or Authenticate widget

    // return Home();
    return Authenticate();

  }
}