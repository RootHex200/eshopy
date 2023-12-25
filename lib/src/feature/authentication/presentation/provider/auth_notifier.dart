


import 'package:eshopy/src/core/db/local_db.dart';
import 'package:eshopy/src/core/state/base_state.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_login_model.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_registration_model.dart';
import 'package:eshopy/src/feature/authentication/domain/use_cases/auth_use_cases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthNotifier extends StateNotifier<BaseState> {
  AuthNotifier(this.authUsecase,this.ref): super(InitialState());

  final Authusecase authUsecase;
  final Ref ref;
  Future userlogin(UserLoginInputeModel userLoginInputeModel)async{
    final response=await authUsecase.userLogin(userLoginInputeModel);
    if(response["status"]==true){
      state=SuccessState<String>(data: response["message"]);
      
      //store token in local db
     final SharedPreferences localdb=await ref.watch(localdbProvider);
     localdb.setString("userToken", response["token"]);

    }
    if(response["status"]==false){
      state=ErrorState<String>(data: response["message"]);
    }
  }

  Future userRegistration(UserRegiData userRegiData)async{
    final response=await authUsecase.userRegistration(userRegiData);
    print(response);
    if(response["status"]==true){
      state=SuccessState<String>(data: response["message"]);
      
      //store token in local db
     final SharedPreferences localdb=await ref.watch(localdbProvider);
     localdb.setString("userToken", response["token"]);

    }
    if(response["status"]==false){
      state=ErrorState<String>(data: response["message"]);
    }
    
  }
}