import 'package:flutter_test/flutter_test.dart';
import 'package:home_stuff/src/features/auth/interactor/atoms/auth_atoms.dart';
import 'package:home_stuff/src/features/auth/interactor/entities/tokenization.dart';
import 'package:home_stuff/src/features/auth/interactor/reducers/auth_reducer.dart';
import 'package:home_stuff/src/features/auth/interactor/services/auth_service.dart';
import 'package:home_stuff/src/features/auth/interactor/states/auth_state.dart';
import 'package:mocktail/mocktail.dart';

class AuthServiceMock extends Mock implements AuthService {}

void main() {
  final service = AuthServiceMock();
  final reducer = AuthReducer(service);

  tearDown(() => reset(service));
  tearDownAll(() => reducer.dispose());

  group('check auth |', () {
    test('Logged', () {
      const logged = Logged(Tokenization(idToken: '12345'));
      when(() => service.checkAuth()).thenAnswer((_) async => logged);

      expect(authState.buffer(2), completion([isA<LoadingAuth>(), logged]));

      checkAuthAction();
    });
  });
}
