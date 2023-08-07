import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepository(this._firebaseAuth);

  Future signInByEmailAndPass(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(
          Failure(e.message!)); // Twój własny typ Failure do obsługi błędów
    }
  }
}

class Failure {
  final String message;

  Failure(this.message);
}
