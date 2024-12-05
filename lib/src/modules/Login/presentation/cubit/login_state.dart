part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(false) bool switchLanguage
  }) = _LoginState;
}
