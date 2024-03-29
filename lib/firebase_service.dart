import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
final String Users_Collection = 'users';

class FirebaseService {

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseStorage _dbstorage = FirebaseStorage.instance;
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Map?currentUser;

  FirebaseService();


  Future<bool>loginUser({required String email,required String password})async{
  try{
    UserCredential _userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    if(_userCredential!=null){
      currentUser= await getUserData(uid: _userCredential.user!.uid);
      return true;
    }
    else{
      return false;
    }
  }
  catch(e){
    print(e);
    return false;
  }
  }
  Future<Map>getUserData({required String uid}) async{
   DocumentSnapshot _doc = await _db.collection(Users_Collection).doc(uid).get();
   return _doc.data() as Map;
  }
}