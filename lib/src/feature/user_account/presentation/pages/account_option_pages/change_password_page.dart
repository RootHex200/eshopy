import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/save_cancel_button_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  late TextEditingController currentpasswordcontroller;
  late TextEditingController newpasswordcontroller;
  late TextEditingController confirmpasswordcontroller;
  @override
  void initState() {
    currentpasswordcontroller = TextEditingController();
    newpasswordcontroller = TextEditingController();
    confirmpasswordcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    currentpasswordcontroller.dispose();
    newpasswordcontroller.dispose();
    confirmpasswordcontroller.dispose();
    super.dispose();
  }
   bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Change password",style: TextStyle(color: Appcolor.contentmain,fontWeight: FontWeight.bold,fontSize: 28),),
                const VerticalSpace(height: 100),
                CustomTextField(
                  hintText: "Current passowrd",
                   controller: currentpasswordcontroller,
                   obscureText: obscureText,
                   suffixIcon:obscureText? Appicon.passwrodVisible:Appicon.passwordInvisible ,
                   
                   ),
                   const VerticalSpace(height: 20),
                                   CustomTextField(
                  hintText: "Current passowrd",
                   controller: newpasswordcontroller,
                   obscureText: obscureText,
                   suffixIcon:obscureText? Appicon.passwrodVisible:Appicon.passwordInvisible ,
                   
                   ),
                   const VerticalSpace(height: 20),
                                   CustomTextField(
                  hintText: "Current passowrd",
                   controller: confirmpasswordcontroller,
                   obscureText: obscureText,
                   suffixIcon:obscureText? Appicon.passwrodVisible:Appicon.passwordInvisible ,
                   
                   ),
                    const VerticalSpace(height: 50),
                Savecancelbuttonwidget(onSave: (){}, onCancel: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}