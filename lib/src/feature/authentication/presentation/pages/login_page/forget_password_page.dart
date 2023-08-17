import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class Forgetpasswordpage extends StatefulWidget {
  const Forgetpasswordpage({super.key});

  @override
  State<Forgetpasswordpage> createState() => _ForgetpasswordpageState();
}

class _ForgetpasswordpageState extends State<Forgetpasswordpage> {
  late TextEditingController emailcontroller;
  @override
  void initState() {
    emailcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Appicon.arrowBack),
                    const HorizontalSpace(width: 20),
                    const Text(
                      'Forget Password',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Appcolor.contentmain,
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(height: 100),
                const Text(
                  "Sorry to hear that",
                  style: TextStyle(
                      color: Appcolor.contentmain,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const VerticalSpace(height: 10),
                const Text(
                  "we will send you a link to reset your password",
                  style: TextStyle(color: Appcolor.contentsecond, fontSize: 18),
                ),
                const VerticalSpace(height: 20),
                Row(
                  children: [
                    const Center(child: Appicon.email),
                    const HorizontalSpace(width: 20),
                    Expanded(
                        child: CustomTextField(
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      controller: emailcontroller,
                    ))
                  ],
                ),
                const VerticalSpace(height: 60),
                Center(
                    child: Buttonwidget(
                  color: Appcolor.primaryColor,
                  width: MediaQuery.of(context).size.width - 80,
                  textcolor: Appcolor.white,
                  text: 'Send Email',
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
