import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ATLDevFirebaseUser {
  ATLDevFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ATLDevFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ATLDevFirebaseUser> aTLDevFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<ATLDevFirebaseUser>((user) => currentUser = ATLDevFirebaseUser(user));
