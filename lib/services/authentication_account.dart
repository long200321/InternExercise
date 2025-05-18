import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationAccount {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future registerEmail(String email, String password)async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;

      return user;
    }catch(e){
      print(e);
      return null;

    }
  }
  Future signInEmail(String email, String password)async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user;
    }catch(e){
      print(e);
      return null;

    }
  }
}