import 'package:cinemapranthan/backend/models/favourites/favmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/* Future<void> addToFavourites(/* {required Favourites favourite} */) async {
  final user = FirebaseAuth.instance.currentUser;
  final fav = FirebaseFirestore.instance
      .collection("users")
      .doc(user!.uid)
      .collection("favourites");
 
}
 */
class DatabaseService {
  final user = FirebaseAuth.instance.currentUser;
  // collection reference
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('users');

  Future<void> addtoFav(
    Favourites favourites,
  ) async {
    final uid = user!.uid;
    final String mediatype = favourites.ismovie ? "MOVIE" : "TVSHOW";
    final String favid = "$mediatype${favourites.id}";
    collection
        .doc(uid)
        .collection("favourites")
        .doc(favid)
        .set(favourites.toJson());
  }

  Future<void> removefromFav(bool ismovie, int id) async {
    final uid = user!.uid;
    final String mediatype = ismovie ? "MOVIE" : "TVSHOW";
    final String favid = "$mediatype$id";
    collection.doc(uid).collection("favourites").doc(favid).delete();
  }

  Future<bool> checkifFavourited(ismovie, id) async {
    final uid = user!.uid;
    final String mediatype = ismovie ? "MOVIE" : "TVSHOW";
    final String favid = "$mediatype$id";
    DocumentSnapshot ds =
        await collection.doc(uid).collection("favourites").doc(favid).get();
    bool isliked = ds.exists;
    return isliked;
  }

  getFav() async {
    final uid = user!.uid;

    return collection.doc(uid).collection("favourites").get();
  }
}
