import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_management_client/infrastructure/repositories/auth_repo.dart';

part 'auth_notifier.freezed.dart';
part 'auth_notifier.g.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.authenticating() = _Auththenticating;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.error(String errorMessage) = _Error;
  const factory AuthState.noStore() = _NoStore;
}

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    isExpiredToken();
    return const AuthState.unAuthenticated();
  }

  Future login(String username, String password) async {
    state = const AuthState.authenticating();
    final res = await ref.watch(authRepoProvider).login(username, password);
    state = res.fold((l) => const _Error('Login failed'),
        (r) => const AuthState.authenticated());
  }

  Future signUp(String username, String password) async {
    state = const AuthState.authenticating();
    final res = await ref.watch(authRepoProvider).signUp(username, password);
    state = res.fold((l) => const _Error('Sign up failed'),
        (r) => const AuthState.unAuthenticated());
  }

  Future<bool> isExpiredToken() async {
    try {
      final now = DateTime.now();
      final pref = await SharedPreferences.getInstance();
      final accessToken = pref.getString('access_token');
      final accessExpired = JwtDecoder.getExpirationDate(accessToken ?? '');
      final expired = accessExpired.isBefore(
        now,
      );
      if (expired) {
        state = const _UnAuthenticated();
        return true;
      } else {
        // state = const _Authenticated();
        return false;
      }
    } catch (e) {
      state = const _UnAuthenticated();
      return true;
    }
  }

  Future logout() async {
    state = const _UnAuthenticated();
  }

  void noStore() {
    state = const _NoStore();
  }
}
