import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_stuff/src/features/things/ui/pages/things_page.dart';

class ThingsModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const ThingsPage());
  }
}
