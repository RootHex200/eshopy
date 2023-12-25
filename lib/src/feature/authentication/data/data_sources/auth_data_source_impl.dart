



import 'package:dio/dio.dart';
import 'package:eshopy/src/feature/authentication/data/data_sources/auth_data_source.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_registration_model.dart';

class AuthDataApi extends AuthDataSource{
  AuthDataApi({required this.client});

  final Dio client;
  @override
  Future<Response> userLogin(String email)async {
    return await client.get("http://192.168.1.21:3000/users?email=${email}");
  }

  @override
  Future<Response> userRegistrationData(UserRegiData userRegiData)async {
    final response=await client.post("http://192.168.1.21:3000/users",data: userRegiData.toJson());
    print(response.statusCode);
    return response;
  }

}