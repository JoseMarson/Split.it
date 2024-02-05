import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginController {
  UserModel? user;
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  final LoginService service;
  Function(LoginState state)? onChange;

  LoginController({required this.onUpdate, required this.service});
  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      onUpdate();
      final user = await service.googleSignIn();

      state = LoginStateSucess(user: user);
      update();
      print("Nome ${user.name}");
    } catch (error) {
      state = LoginStateFailure(mensage: error.toString());
      update();
    }
  }

  void update() {
    onUpdate();
    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}
