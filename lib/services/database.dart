import 'package:LBPAlert/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference users =
      FirebaseFirestore.instance.collection("users");

  Future UpdateUserData(String firstname, String lastname, String phoneNum,
      String address) async {
    return await users
        .doc(uid)
        .set({
          'firstname': firstname,
          'lastname': lastname,
          'phone_number': phoneNum,
          "address": address,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  // get streams
  FirebaseUserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return FirebaseUserData(
        uid: uid,
        phoneNumber: (snapshot.data() as dynamic)['phone_number'],
        address: (snapshot.data() as dynamic)['address'],
        firstname: (snapshot.data() as dynamic)['firstname'],
        lastname: (snapshot.data() as dynamic)['lastname']);
  }

  Stream<FirebaseUserData> get userData {
    return users.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
