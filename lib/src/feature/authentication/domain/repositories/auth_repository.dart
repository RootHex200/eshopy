


import 'package:eshopy/src/feature/authentication/data/data_sources/auth_data_source.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_login_model.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_registration_model.dart';
import 'package:eshopy/src/feature/authentication/data/repositories/auth_repositoryImpl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authrepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(authDataSource: ref.watch(authdatasourceProvider));
});


abstract class AuthRepository{

  Future userLogin(UserLoginInputeModel userLoginInputeModel);

  Future userRegistration(UserRegiData userRegiData);
}