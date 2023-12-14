

import 'package:eshopy/src/feature/authentication/data/model/user_login_model.dart';
import 'package:eshopy/src/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authusecaseProvider = Provider((ref) {
  return Authusecase(authRepository: ref.watch(authrepositoryProvider));
});


class Authusecase{
  const Authusecase({required this.authRepository});

  final AuthRepository authRepository;
  Future userLogin(UserLoginInputeModel userLoginInputeModel)async{
    return await authRepository.userLogin(userLoginInputeModel);
  }
}