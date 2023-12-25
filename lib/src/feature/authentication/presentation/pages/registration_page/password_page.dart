import 'dart:developer';

import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/next_button_part_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/state/base_state.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/authentication/data/model/user_registration_model.dart';
import 'package:eshopy/src/feature/authentication/presentation/provider/auth_notifier_provider.dart';
import 'package:eshopy/src/feature/authentication/presentation/provider/user_regi_inpute_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Passwordpage extends StatefulWidget {
  const Passwordpage({super.key});

  @override
  State<Passwordpage> createState() => _PasswordpageState();
}

class _PasswordpageState extends State<Passwordpage> {
  late TextEditingController confirmpasswordcontroller;
  late TextEditingController passwordcontroller;
  bool obscureText = true;
  @override
  void initState() {
    confirmpasswordcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    confirmpasswordcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                const Text(
                  "Create a Password",
                  style: TextStyle(
                      color: Appcolor.contentmain,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const VerticalSpace(height: 10),
                const Text(
                  "Because you are important to us",
                  style: TextStyle(color: Appcolor.contentsecond, fontSize: 18),
                ),
                const VerticalSpace(height: 50),
                Row(
                  children: [
                    const Center(child: Appicon.password),
                    const HorizontalSpace(width: 20),
                    Expanded(
                        child: CustomTextField(
                      hintText: "Password",
                      keyboardType: TextInputType.emailAddress,
                      controller: passwordcontroller,
                      obscureText: obscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: obscureText
                            ? Appicon.passwrodVisible
                            : Appicon.passwordInvisible,
                      ),
                    ))
                  ],
                ),
                const VerticalSpace(height: 20),
                Row(
                  children: [
                    const Center(child: Appicon.password),
                    const HorizontalSpace(width: 20),
                    Expanded(
                        child: CustomTextField(
                      hintText: "Repeate Password",
                      keyboardType: TextInputType.emailAddress,
                      controller: confirmpasswordcontroller,
                      obscureText: obscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: obscureText
                            ? Appicon.passwrodVisible
                            : Appicon.passwordInvisible,
                      ),
                    ))
                  ],
                ),
                const VerticalSpace(height: 90),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const HorizontalSpace(width: 10),
                    SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width - 100,
                      child: const Text(
                        'Keep me updated with lated news',
                        maxLines: 3,
                        style: TextStyle(
                            color: Appcolor.contentsecond, fontSize: 16),
                      ),
                    )
                  ],
                ),
                const VerticalSpace(height: 10),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const HorizontalSpace(width: 10),
                    const Text(
                      'I agree to the terms and conditions',
                      style: TextStyle(
                          color: Appcolor.contentsecond, fontSize: 16),
                    )
                  ],
                ),
                const VerticalSpace(height: 40),
                Center(
                    child: Buttonwidget(
                  color: Appcolor.primaryColor,
                  width: MediaQuery.of(context).size.width - 80,
                  textcolor: Appcolor.white,
                  text: 'Sign Up',
                )),
                const VerticalSpace(height: 40),
                Consumer(
                  builder:(_,ref,child) {
                    final authnotifier=ref.watch(authnotifierProvider);
                      if(authnotifier is SuccessState){
                          //write success code
                          log("success");
                          
                          // for clear user regi data state
                          ref.invalidate(userregidataholdProvider);
                
                        }
                        if(authnotifier is ErrorState){
                          //write a error code
                        }
                    return Nextbuttonpartwidget(
                    backbuttonClick: (){
                      Navigator.pop(context);
                    },
                    nextbuttonClick: ()async{
                      if(passwordcontroller.text.isNotEmpty&&confirmpasswordcontroller.text.isNotEmpty){
                        final _state=ref.read(userregidataholdProvider.state);
                        _state.state=_state.state.copyWith(password: passwordcontroller.text.toString());

                        final regidata=ref.watch(userregidataholdProvider);
                        UserRegiData userRegiData=UserRegiData(address: regidata.address,id: 11,fullName: regidata.fullName,phone: regidata.phone,email: regidata.email,password: regidata.password);

                        await ref.read(authnotifierProvider.notifier).userRegistration(userRegiData);
                      }else{
                        //show error message of incomplete inpute fi
                      }
                    
                  },);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
