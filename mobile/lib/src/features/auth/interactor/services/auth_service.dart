import 'package:home_stuff/src/features/auth/interactor/dtos/email_credential.dart';
import 'package:home_stuff/src/features/auth/interactor/states/auth_state.dart';

abstract class AuthService {
  Future<AuthState> checkAuth();

  Future<AuthState> loginWithEmail(EmailCredentialDTO dto);

  Future<AuthState> logout();
}
