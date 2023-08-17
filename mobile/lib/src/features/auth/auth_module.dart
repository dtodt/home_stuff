import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_stuff/src/features/auth/data/services/firebase_auth_service.dart';
import 'package:home_stuff/src/features/auth/interactor/reducers/auth_reducer.dart';
import 'package:home_stuff/src/features/auth/interactor/services/auth_service.dart';
import 'package:home_stuff/src/features/auth/ui/pages/login_page.dart';

class AuthModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<AuthService>(FirebaseAuthService.new);
    i.addSingleton<AuthReducer>(AuthReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/login', child: (_) => const LoginPage());
  }
}
