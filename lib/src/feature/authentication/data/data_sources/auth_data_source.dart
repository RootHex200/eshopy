


import 'package:dio/dio.dart';
import 'package:eshopy/src/core/network/rest_client.dart';
import 'package:eshopy/src/feature/authentication/data/data_sources/auth_data_source_impl.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_registration_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authdatasourceProvider = Provider<AuthDataSource>((ref) {
  return AuthDataApi(client: ref.watch(dioProvider));
});

abstract class AuthDataSource{

  Future<Response> userLogin(String email);

  Future<Response> userRegistrationData(UserRegiData userRegiData);
}