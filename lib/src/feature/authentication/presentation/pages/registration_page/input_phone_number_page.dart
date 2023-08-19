import 'package:eshopy/src/core/common/widgets/next_button_part_widget.dart';
import 'package:eshopy/src/core/common/widgets/phone_and_otp_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/registration_page/password_page.dart';
import 'package:flutter/material.dart';

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
                const Nextbuttonpartwidget(navigationTO: Passwordpage())
              ],
            ),
          ),
        ),
      ),
    );
  }
}