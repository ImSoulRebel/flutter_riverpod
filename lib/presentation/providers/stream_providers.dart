import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'stream_providers.g.dart';

@Riverpod(keepAlive: true)
Stream<List<String>> usersInChat(Ref ref) async* {
  final userNames = <String>[];

  await for (final name in RandomGenerator.randomNameStream()) {
    userNames.add(name);
    yield [
      ...userNames
    ]; // Crear una nueva lista para que Riverpod detecte el cambio
  }
}
