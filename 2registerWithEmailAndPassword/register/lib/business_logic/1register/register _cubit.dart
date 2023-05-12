import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register/business_logic/1register/register_state.dart';

import '../../data/models/5Add_Users/User.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    emit(RegisterLoading());
    try {
      final userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final token = await userCredential.user!.getIdToken();
      SocialUserModel socialUserModel = SocialUserModel(
          name: "Hatem",
          phone: "012312",
          email: email,
          password: password,
          token: token);
      userCreate(socialUserModel: socialUserModel);
      print(token.toString());
      emit(RegisterSuccess(token: token));
    } catch (error) {
      emit(RegisterFailure(error: error.toString()));
    }
  }

  void userCreate({required SocialUserModel socialUserModel}) {
    SocialUserModel model = SocialUserModel(
      name: socialUserModel.name,
      email: socialUserModel.email,
      phone: socialUserModel.phone,
      password: socialUserModel.password,
      token: socialUserModel.token,
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc()
        .set(model.toMap())
        .then((value) {
      emit(SocialCreateUserSuccessState(token: model.token.toString()));
    }).catchError((error) {
      print(error.toString());
      emit(SocialCreateUserErrorState(error: error.toString()));
    });
  }
}
