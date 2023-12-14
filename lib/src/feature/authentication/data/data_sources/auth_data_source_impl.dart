



import 'package:dio/dio.dart';
import 'package:eshopy/src/feature/authentication/data/data_sources/auth_data_source.dart';

class AuthDataApi extends AuthDataSource{
  AuthDataApi({required this.client});

  final Dio client;
  @override
  Future<Response> userLogin(String email)async {
    return await client.get("http://192.168.1.21:3000/users?email=${email}");
  }

  @override
  Future<Response> userRegistrationData() {
    // TODO: implement postUserRegistrationData
    throw UnimplementedError();
  }

}