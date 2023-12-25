import 'package:eshopy/src/core/common/widgets/introduce_text_fields_widget.dart';
import 'package:eshopy/src/core/common/widgets/next_button_part_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/registration_page/address_page.dart';
import 'package:eshopy/src/feature/authentication/presentation/provider/user_regi_inpute_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
                PersonalInfotextfieldswidget(
                    namecontroller: namecontroller,
                    dateofbirthcontroller: dateofbirthcontroller,
                    emailcontroller: emailcontroller),
                const VerticalSpace(height: 70),
                Consumer(
                  builder:(context,ref,child) {
                    return Nextbuttonpartwidget(
                    backbuttonClick: (){
                      Navigator.pop(context);
                    },
                    nextbuttonClick: (){
                      if(namecontroller.text.isNotEmpty&&dateofbirthcontroller.text.isNotEmpty&&emailcontroller.text.isNotEmpty){
                        final _state=ref.read(userregidataholdProvider.state);
                        _state.state=_state.state.copyWith(fullName: namecontroller.text.toString(),dateOfBirth: dateofbirthcontroller.text.toString(),email: emailcontroller.text.toString());

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Addresspage()));
                        print(ref.watch(userregidataholdProvider).fullName);

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
