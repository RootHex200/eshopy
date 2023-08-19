import 'package:eshopy/src/core/common/widgets/phone_and_otp_widget.dart';
import 'package:eshopy/src/core/common/widgets/save_cancel_button_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class Changephone extends StatefulWidget {
  const Changephone({super.key});

  @override
  State<Changephone> createState() => _ChangephoneState();
}

class _ChangephoneState extends State<Changephone> {
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
                pagetitle: "Change Phone \nNumber",
                onTap: (){}
                ),
                const VerticalSpace(height: 100),
                Savecancelbuttonwidget(onSave: (){}, onCancel: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}