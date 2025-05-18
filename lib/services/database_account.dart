import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseAccount {
  final String uid;
  DatabaseAccount(this.uid);

  CollectionReference userCollection = FirebaseFirestore.instance.collection('user');
  updateUser(String userName, String email, String password){
    userCollection.doc(uid).set({
      'userName' : userName,
      'email' : email,
      'password': password,
    });
  }
}