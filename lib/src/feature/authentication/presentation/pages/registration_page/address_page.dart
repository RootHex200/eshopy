import 'package:eshopy/src/core/common/widgets/address_text_fields_widget.dart';
import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/registration_page/password_page.dart';
import 'package:flutter/material.dart';

class Addresspage extends StatefulWidget {
  const Addresspage({super.key});

  @override
  State<Addresspage> createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
  late TextEditingController addresscontroller;
  late TextEditingController apartemetcontroller;
  late TextEditingController zipcontroller;

  // String? selectedCountry; // Initialize with an empty value
  // String? selectedState;
  // String? selectedCity;
  @override
  void initState() {
    addresscontroller = TextEditingController();
    apartemetcontroller = TextEditingController();
    zipcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    addresscontroller.dispose();
    apartemetcontroller.dispose();
    zipcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello Nantapix!",
                  style: TextStyle(
                    fontSize: 32,
                    color: Appcolor.contentmain,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Where will we ship your item",
                  style: TextStyle(fontSize: 18, color: Appcolor.contentsecond),
                ),
                const VerticalSpace(height: 40),
                Addresstextfieldswidget(
                    addresscontroller: addresscontroller,
                    apartemetcontroller: apartemetcontroller,
                    zipcontroller: zipcontroller),
                        const VerticalSpace(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      InkWell(
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Passwordpage()));
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
