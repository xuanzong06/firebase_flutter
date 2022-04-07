import 'package:firebase_flutter/screens/authenticate/authenticate.dart';
import 'package:firebase_flutter/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_flutter/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<mUser?>(context);


    if(user == null){
      return Authenticate();
    }else{
      return Home();
    }

  }
}
