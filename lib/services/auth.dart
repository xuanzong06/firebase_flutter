import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter/models/user.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on (Firebase)User
  mUser? _userFromFirebaseUser(User? user){
    // if user != null return mUser(...) else return null
    return user != null ? mUser(uid: user.uid) : null;
  }
  // auth change user stream
  Stream<mUser?> get user{
    // return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user));
    // 上面的寫法可以濃縮成下面的寫法
    return _auth.authStateChanges().map(_userFromFirebaseUser);

  }

  // sign in anon
  Future signInAnon() async{
    try{
      UserCredential  result = await _auth.signInAnonymously(); // AuthResult rename UserCredential
      User? user = result.user;
      // return user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password

  // register with email & password

  // sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}