import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ex/model/user_firebase.dart';
class AuthenticateService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?> get user{
    return _auth.authStateChanges();
  }
  UserFirebase? userFromFirebase(User user){
    return user==null? null:UserFirebase(user.uid);
  }
  Future signToAnonymous()async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return userFromFirebase(user!);
    }
        catch(e){
      return null;
        }
  }

  Future registorWithEmail(String email, String password)async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return userFromFirebase(user!);
    }
    catch(e){
      return null;
    }
  }

  Future signOut()async{
    try{
      return await _auth.signOut();
    }
        catch(e){
      return null;
        }
  }


}