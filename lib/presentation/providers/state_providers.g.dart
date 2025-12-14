// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider con cambio de estado simple

@ProviderFor(Counter)
const counterProvider = CounterProvider._();

/// Provider con cambio de estado simple
final class CounterProvider extends $NotifierProvider<Counter, int> {
  /// Provider con cambio de estado simple
  const CounterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'counterProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$counterHash();

  @$internal
  @override
  Counter create() => Counter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$counterHash() => r'e58d89ca74a5541f2b953b520827f92acac0fde5';

/// Provider con cambio de estado simple

abstract class _$Counter extends $Notifier<int> {
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

@ProviderFor(IsDarkTheme)
const isDarkThemeProvider = IsDarkThemeProvider._();

final class IsDarkThemeProvider extends $NotifierProvider<IsDarkTheme, bool> {
  const IsDarkThemeProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'isDarkThemeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$isDarkThemeHash();

  @$internal
  @override
  IsDarkTheme create() => IsDarkTheme();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isDarkThemeHash() => r'2c27f2d107ac197ca3aff68dd873f904f7c5328f';

abstract class _$IsDarkTheme extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<bool, bool>, bool, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(UserName)
const userNameProvider = UserNameProvider._();

final class UserNameProvider extends $NotifierProvider<UserName, String> {
  const UserNameProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'userNameProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userNameHash();

  @$internal
  @override
  UserName create() => UserName();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userNameHash() => r'1701f6276d2bd8a9e6ecfdc3aaffff996a7c7847';

abstract class _$UserName extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<String, String>, String, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
