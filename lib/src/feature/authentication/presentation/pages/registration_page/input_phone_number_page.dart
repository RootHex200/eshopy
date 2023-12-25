import 'package:eshopy/src/core/common/widgets/next_button_part_widget.dart';
import 'package:eshopy/src/core/common/widgets/phone_and_otp_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/registration_page/password_page.dart';
import 'package:eshopy/src/feature/authentication/presentation/provider/user_regi_inpute_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Inputphonenumberpage extends StatefulWidget {
  const Inputphonenumberpage({super.key});

  @override
  State<Inputphonenumberpage> createState() => _InputphonenumberpageState();
}

class _InputphonenumberpageState extends State<Inputphonenumberpage> {
  late TextEditingController phonecontroller;
  late TextEditingController otpcontroller;
  @override
  void initState() {
    phonecontroller = TextEditingController();
    otpcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phonecontroller.dispose();
    otpcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                PhoneandOTPwidget(phonecontroller: phonecontroller, 
                otpcontroller: otpcontroller,
                pagetitle: "Input Phone \nNumber",
                onTap: (){}
                ),
                const VerticalSpace(height: 100),
                Consumer(
                  builder:(context,ref,child) {
                    return Nextbuttonpartwidget(
                    backbuttonClick: (){
                      Navigator.pop(context);
                    },
                    nextbuttonClick: (){
                      if(phonecontroller.text.isNotEmpty&&otpcontroller.text.isNotEmpty){
                        final _state=ref.read(userregidataholdProvider.state);
                        _state.state=_state.state.copyWith(phone: phonecontroller.text.toString());
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Passwordpage()));

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