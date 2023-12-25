

import 'package:dio/dio.dart';
import 'package:eshopy/src/feature/authentication/data/data_sources/auth_data_source.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_login_model.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_registration_model.dart';
import 'package:eshopy/src/feature/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository{
  const AuthRepositoryImpl({required this.authDataSource});
  final AuthDataSource authDataSource;
  
  @override
  Future userLogin(UserLoginInputeModel userLoginInputeModel) async{


    /*NOTE: *** There is no real backend data or login token,jwt,session. 
                it's a simple user login functionality
    */ 


    //call api to check user is registerd or not
    Response response=await authDataSource.userLogin(userLoginInputeModel.email);

    /*if user available then check password is correct or wrong!
      if correct then send message "Login Success"
      if not correct then send message "Password is wrong!"
    */
    if(response.statusCode==200){
      if(response.data[0]["password"]==userLoginInputeModel.password){
        return {"status":true,"message":"Login Success!","token":"base64"};
      }else{
        return {"status":false,"message":"Password is Wrong!"};
      }
    }

    //if user not found then send message "User not Registerd"
    if(response.statusCode==404){
      return {"status":false,"message":"User Not Registerd"};
    }
  }

  @override
  Future userRegistration(UserRegiData userRegiData)async {
    Response response=await authDataSource.userRegistrationData(userRegiData);

    if(response.statusCode==201){
      return {"status":true,"message":"user registration successfully"};
    }
    if(response.statusCode==404){
      return {"status":false,"message":"Registration Unseccessfully"};
    }
  }

}