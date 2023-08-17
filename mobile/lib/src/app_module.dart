import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_stuff/src/features/auth/auth_module.dart';
import 'package:home_stuff/src/features/splash/ui/pages/splash_page.dart';
import 'package:home_stuff/src/features/things/things_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addInstance<FirebaseAuth>(FirebaseAuth.instance);
  }

  @override
  List<Module> get imports => [
        AuthModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child('/splash', child: (_) => const SplashPage());
    r.module('/things', module: ThingsModule());
    r.module('/auth', module: AuthModule());
  }
}
