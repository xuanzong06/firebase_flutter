import 'package:firebase_flutter/screens/wrapper.dart';
import 'package:firebase_flutter/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_flutter/models/user.dart';

void main() async {
  // adding for executing Firsbase init() //1+2
  WidgetsFlutterBinding.ensureInitialized(); //1
  await Firebase.initializeApp(); //2
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<mUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
