abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final String token;

  RegisterSuccess({required this.token});
}

class RegisterFailure extends RegisterState {
  final String error;

  RegisterFailure({required this.error});
}

class SocialCreateUserSuccessState extends RegisterState {
  final String token;

  SocialCreateUserSuccessState({required this.token});
}

class SocialCreateUserErrorState extends RegisterState {
  final String error;

  SocialCreateUserErrorState({required this.error});
}
