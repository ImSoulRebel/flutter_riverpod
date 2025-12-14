// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pokemonName)
const pokemonNameProvider = PokemonNameProvider._();

final class PokemonNameProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const PokemonNameProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokemonNameProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokemonNameHash();

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    return pokemonName(ref);
  }
}

String _$pokemonNameHash() => r'823f0d2b1cf50219ef175f15609ced9ecd78e437';

@ProviderFor(PokemonId)
const pokemonIdProvider = PokemonIdProvider._();

final class PokemonIdProvider extends $NotifierProvider<PokemonId, int> {
  const PokemonIdProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokemonIdProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokemonIdHash();

  @$internal
  @override
  PokemonId create() => PokemonId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$pokemonIdHash() => r'2582bc8b2a0588e8c1cd5356d730821932c630cf';

abstract class _$PokemonId extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element = ref.element
        as $ClassProviderElement<AnyNotifier<int, int>, int, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(pokemonNameFamily)
const pokemonNameFamilyProvider = PokemonNameFamilyFamily._();

final class PokemonNameFamilyProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const PokemonNameFamilyProvider._(
      {required PokemonNameFamilyFamily super.from,
      required int super.argument})
      : super(
          retry: null,
          name: r'pokemonNameFamilyProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokemonNameFamilyHash();

  @override
  String toString() {
    return r'pokemonNameFamilyProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as int;
    return pokemonNameFamily(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonNameFamilyProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonNameFamilyHash() => r'dc3ad0e23962e10ecd8a7cae77cfe18e3cf3ea8c';

final class PokemonNameFamilyFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, int> {
  const PokemonNameFamilyFamily._()
      : super(
          retry: null,
          name: r'pokemonNameFamilyProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: false,
        );

  PokemonNameFamilyProvider call(
    int pokemonId,
  ) =>
      PokemonNameFamilyProvider._(argument: pokemonId, from: this);

  @override
  String toString() => r'pokemonNameFamilyProvider';
}
