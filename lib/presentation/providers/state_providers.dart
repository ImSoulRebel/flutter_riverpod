import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'state_providers.g.dart';

/// Provider con cambio de estado simple
@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increment() => state++;
}

@riverpod
class IsDarkTheme extends _$IsDarkTheme {
  @override
  bool build() => false;
  void toggle() => state = !state;
}

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() => '❤️Paco Amoroso❤️';

  void changeRandomName() => state = "❤️${RandomGenerator.getRandomName()}❤️";
}
