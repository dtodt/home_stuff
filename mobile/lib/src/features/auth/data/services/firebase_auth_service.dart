import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_stuff/src/features/auth/interactor/dtos/email_credential.dart';
import 'package:home_stuff/src/features/auth/interactor/entities/tokenization.dart';
import 'package:home_stuff/src/features/auth/interactor/services/auth_service.dart';
import 'package:home_stuff/src/features/auth/interactor/states/auth_state.dart';

class FirebaseAuthService extends AuthService {
  final FirebaseAuth auth;

  FirebaseAuthService(this.auth);

  @override
  Future<AuthState> checkAuth() async {
    final token = await auth.currentUser?.getIdToken();
    if (token == null) {
      return Unlogged();
    }
    return Logged(Tokenization(idToken: token));
  }

  @override
  Future<AuthState> loginWithEmail(EmailCredentialDTO dto) async {
    await auth.signInWithEmailAndPassword(
      email: dto.email,
      password: dto.password,
    );
    return checkAuth();
  }

  @override
  Future<AuthState> logout() async {
    await auth.signOut();
    return Unlogged();
  }
}
