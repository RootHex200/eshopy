import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/login_page/forget_password_page.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/registration_page/registration_page.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;
  bool obscureText = true;
  @override
  void initState() {
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
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
                  "Welcome !!",
                  style: TextStyle(
                      color: Appcolor.contentmain,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const VerticalSpace(height: 10),
                const Text(
                  "Login in to continue",
                  style: TextStyle(color: Appcolor.contentsecond, fontSize: 18),
                ),
                const VerticalSpace(height: 50),
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
                const VerticalSpace(height: 20),
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
                const VerticalSpace(height: 50),
                Center(
                    child: Buttonwidget(
                  color: Appcolor.primaryColor,
                  width: MediaQuery.of(context).size.width - 80,
                  textcolor: Appcolor.white,
                  text: 'Login',
                )),
                const VerticalSpace(height: 20),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Forgetpasswordpage()));
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Appcolor.contentmain, fontSize: 16),
                        ))),
                const VerticalSpace(height: 40),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Registrationpage()));
                        },
                        child: Buttonwidget(
                          text: 'Create an Account',
                          width: MediaQuery.of(context).size.width - 80,
                          textcolor: Appcolor.primaryColor,
                          bordercolor: Appcolor.primaryColor,
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
