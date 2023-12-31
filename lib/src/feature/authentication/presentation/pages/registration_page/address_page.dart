import 'package:eshopy/src/core/common/widgets/address_text_fields_widget.dart';
import 'package:eshopy/src/core/common/widgets/next_button_part_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/authentication/presentation/pages/registration_page/input_phone_number_page.dart';
import 'package:eshopy/src/feature/authentication/presentation/provider/user_regi_inpute_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Addresspage extends StatefulWidget {
  const Addresspage({super.key});

  @override
  State<Addresspage> createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
  late TextEditingController addresscontroller;
  late TextEditingController apartemetcontroller;
  late TextEditingController zipcontroller;
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
                AddressInfotextfieldswidget(
                    addresscontroller: addresscontroller,
                    apartemetcontroller: apartemetcontroller,
                    zipcontroller: zipcontroller),
                        const VerticalSpace(height: 70),
                Consumer(
                  builder:(context,ref,child) {
                    return Nextbuttonpartwidget(
                    backbuttonClick: (){
                      Navigator.pop(context);
                    },
                    nextbuttonClick: (){
                      if(addresscontroller.text.isNotEmpty&&apartemetcontroller.text.isNotEmpty&&zipcontroller.text.isNotEmpty){
                        final _state=ref.read(userregidataholdProvider.state);
                        _state.state=_state.state.copyWith(address: addresscontroller.text.toString(),apartment: apartemetcontroller.text.toString(),pincode: zipcontroller.text.toString());
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Inputphonenumberpage()));
                        print(ref.watch(userregidataholdProvider).address);
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
