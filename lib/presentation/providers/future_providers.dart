import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(Ref ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  return await PokemonInformation.getPokemonName(pokemonId);
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void increment() {
    state++;
  }
}

@Riverpod(keepAlive: true)
Future<String> pokemonNameFamily(Ref ref, int pokemonId) async {
  return await PokemonInformation.getPokemonName(pokemonId);
}
