import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/registration_page/address_page.dart';
import 'package:flutter/material.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  late TextEditingController namecontroller;
  late TextEditingController dateofbirthcontroller;
  late TextEditingController emailcontroller;
  bool obscureText = true;
  @override
  void initState() {
    emailcontroller = TextEditingController();
    namecontroller = TextEditingController();
    dateofbirthcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    namecontroller.dispose();
    dateofbirthcontroller.dispose();
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
                  "Hello",
                  style: TextStyle(
                      color: Appcolor.contentmain,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const VerticalSpace(height: 10),
                const Text(
                  "Lets Introduce",
                  style: TextStyle(color: Appcolor.contentsecond, fontSize: 18),
                ),
                const VerticalSpace(height: 50),
                Row(
                  children: [
                    const Center(child: Appicon.person),
                    const HorizontalSpace(width: 20),
                    Expanded(
                        child: CustomTextField(
                      hintText: "Your full name",
                      keyboardType: TextInputType.emailAddress,
                      controller: namecontroller,
                    ))
                  ],
                ),
                const VerticalSpace(height: 20),
                Row(
                  children: [
                    const Center(child: Appicon.date),
                    const HorizontalSpace(width: 20),
                    Expanded(
                        child: CustomTextField(
                      hintText: "Date of Birth",
                      keyboardType: TextInputType.emailAddress,
                      controller: dateofbirthcontroller,
                    ))
                  ],
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
                const VerticalSpace(height: 70),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Addresspage()));
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
