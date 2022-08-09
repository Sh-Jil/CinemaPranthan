import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'authrepo.dart';

@LazySingleton(as: AuthRepo)
class AuthRepository implements AuthRepo {
  final _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  @override
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) return;
      _user = googleUser;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .catchError((onerror) {
        log(onerror.toString());
      });
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await googleSignIn.signOut();
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  @override
  Future<String> getUser() async {
    return (_firebaseAuth.currentUser)!.email!;
  }
}
