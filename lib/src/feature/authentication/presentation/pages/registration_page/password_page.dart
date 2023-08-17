import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class Passwordpage extends StatefulWidget {
  const Passwordpage({super.key});

  @override
  State<Passwordpage> createState() => _PasswordpageState();
}

class _PasswordpageState extends State<Passwordpage> {
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Buttonwidget(
                          width: 60,
                          icon: Appicon.back,
                          bordercolor: Appcolor.primaryColor,
                        ),
                      ),
                      const HorizontalSpace(width: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Addresspage()));
                        },
                        child: Buttonwidget(
                          color: Appcolor.primaryColor,
                          width: MediaQuery.of(context).size.width - 160,
                          textcolor: Appcolor.white,
                          text: 'Next',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
