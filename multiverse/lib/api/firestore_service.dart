import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:multiverse/models/player_model.dart';


class FirestoreService {
  static Future<List<Player>> fetchData() async {
    QuerySnapshot querySnapshot= await FirebaseFirestore.instance.collection('players').get();
    return querySnapshot.docs.map((doc) => Player.fromMap(doc.data() as Map<String, dynamic>)).toList();
  }
}