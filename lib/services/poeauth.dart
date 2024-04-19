import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> getCurrentUserEmail() async {
    final user = _auth.currentUser;
    if (user != null) {
      return user.email!;
    }
    return '';
  }

  Future<void> login() async {
    try {
      final String email = 'example@example.com';
      final String password = 'password';

      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Login successful
    } catch (error) {
      // Login unsuccessful, handle the error
    }
  }
}