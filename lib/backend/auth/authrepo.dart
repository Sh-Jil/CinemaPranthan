abstract class AuthRepo {
  Future<void> signInWithGoogle();
  Future<void> signOut();
  Future<bool> isSignedIn();
  Future<String> getUser();
}
