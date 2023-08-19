import 'package:eshopy/src/core/common/widgets/address_text_fields_widget.dart';
import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/introduce_text_fields_widget.dart';
import 'package:eshopy/src/core/common/widgets/phone_number_text_fields_widgets.dart';
import 'package:eshopy/src/core/common/widgets/save_cancel_button_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/change_phone_page.dart';
import 'package:flutter/material.dart';

class Editprofilepage extends StatefulWidget {
  const Editprofilepage({super.key});

  @override
  State<Editprofilepage> createState() => _EditprofilepageState();
}

class _EditprofilepageState extends State<Editprofilepage> {
  late TextEditingController namecontroller;
  late TextEditingController dateofbirthcontroller;
  late TextEditingController emailcontroller;
  late TextEditingController phonecontroller;
  late TextEditingController addresscontroller;
  late TextEditingController apartemetcontroller;
  late TextEditingController zipcontroller;
  @override
  void initState() {
    namecontroller = TextEditingController();
    dateofbirthcontroller = TextEditingController();
    emailcontroller = TextEditingController();
    phonecontroller = TextEditingController();
    addresscontroller = TextEditingController();
    apartemetcontroller = TextEditingController();
    zipcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    namecontroller.dispose();
    dateofbirthcontroller.dispose();
    emailcontroller.dispose();
    phonecontroller.dispose();
    addresscontroller.dispose();
    apartemetcontroller.dispose();
    zipcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Account Page',
                  style: TextStyle(
                      color: Appcolor.contentmain,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                const VerticalSpace(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Appcolor.primaryColor,
                      ),
                      HorizontalSpace(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Buttonwidget(
                            width: 150,
                            color: Appcolor.contentmain,
                            text: "CHANGE PHOTO",
                            textcolor: Appcolor.white,
                            fontSize: 16,
                            radius: 30,
                          ),
                          VerticalSpace(height: 15),
                          Buttonwidget(
                            width: 150,
                            bordercolor: Appcolor.contentmain,
                            text: "EDIT PROFILE",
                            textcolor: Appcolor.contentmain,
                            fontSize: 16,
                            radius: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const VerticalSpace(height: 20),
                const Text(
                  "personal information",
                  style: TextStyle(color: Appcolor.contentsecond),
                ),
                const VerticalSpace(height: 15),
                PersonalInfotextfieldswidget(
                    namecontroller: namecontroller,
                    dateofbirthcontroller: dateofbirthcontroller,
                    emailcontroller: emailcontroller),
                const VerticalSpace(height: 20),
                PhonenumbertextField(phonecontroller: phonecontroller, color: Appcolor.contentmain, text: 'CHANGE', 
                textcolor: Appcolor.white,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Changephone()));
                },
                ),
                const VerticalSpace(height: 15),
                const Text(
                  "shipping information",
                  style: TextStyle(color: Appcolor.contentsecond),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: AddressInfotextfieldswidget(
                      addresscontroller: addresscontroller,
                      apartemetcontroller: apartemetcontroller,
                      zipcontroller: zipcontroller),
                ),
                const VerticalSpace(height: 30),
                Savecancelbuttonwidget(onSave: (){}, onCancel: (){})

              ],
            ),
          ),
        ),
      ),
    );
  }
}
