import 'package:asp/asp.dart';
import 'package:home_stuff/src/features/auth/interactor/dtos/email_credential.dart';

import 'package:home_stuff/src/features/auth/interactor/states/auth_state.dart';

// atoms
final authState = Atom<AuthState>(InitAuth(), key: 'authState');

// actions
final checkAuthAction = Atom.action(key: 'checkAuthAction');

final loginWithEmailAction = Atom<EmailCredentialDTO>(
  EmailCredentialDTO(),
  key: 'loginWithEmailAction',
);

final logoutAction = Atom.action(key: 'logoutAction');
