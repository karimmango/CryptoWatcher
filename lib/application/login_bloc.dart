import 'package:email_validator/email_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:crypto_watcher/application/auth_bloc.dart';
import 'package:crypto_watcher/domain/auth_repo.dart';

import 'login_state.dart';

class LoginBloc extends StateNotifier<LoginState> {
  final AuthRepo authRepo;

  LoginBloc(this.authRepo)
      : super(LoginState(
          email: '',
          password: '',
        ));

  void emailChanged(String email) {
    final isValid = EmailValidator.validate(email);
    state = state.copyWith(
        email: email,
        emailError: isValid ? null : 'Please enter a valid email!');
  }

  void passwordChanged(String password) {
    state = state.copyWith(password: password);
  }

  void loginPressed() {
    if (state.emailError == null && state.passwordError == null) {
      authRepo.login(state.email, state.password);
    }
  }

  void registerPressed() {
    if (state.emailError == null && state.passwordError == null) {
      authRepo.register(state.email, state.password);
    }
  }
}

final loginBlocProvider = StateNotifierProvider<LoginBloc>((ref) {
  final authRepo = ref.watch(authRepoProvider);
  return LoginBloc(authRepo);
});
