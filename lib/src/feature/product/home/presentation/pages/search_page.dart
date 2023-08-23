import 'package:eshopy/src/core/common/widgets/product_image_horizontal_view.dart';
import 'package:eshopy/src/core/common/widgets/product_item_view.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Appcolor.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    //arrow
                    IconButton(
                      icon: Appicon.arrowBack,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const HorizontalSpace(width: 10),
                    Expanded(
                        child: SizedBox(
                      height: 45,
                      child: CupertinoSearchTextField(
                        autofocus: true,
                        onSubmitted: (value) {
                          if (value.isNotEmpty) {
                            setState(() {
                              visible = true;
                            });
                          }
                        },
                        onChanged: (value) {
                          if (value.isEmpty) {
                            setState(() {
                              visible = false;
                            });
                          }
                        },
                        prefixIcon: Appicon.search,
                        decoration: BoxDecoration(
                          color: Appcolor.grey.withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    )),
                    const HorizontalSpace(width: 10),
                    IconButton(
                        onPressed: () {},
                        icon: visible?Appicon.filter:Appicon.mic
                        )
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !visible,
              child: const Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Viewed",
                          style: TextStyle(
                              color: Appcolor.contentmain,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Clear History",
                          style: TextStyle(
                              color: Appcolor.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Productitemhorizontal(borderRadius: 15,),
                  ),
                  VerticalSpace(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Searched",
                          style: TextStyle(
                              color: Appcolor.contentmain,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Clear History",
                          style: TextStyle(
                              color: Appcolor.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Appicon.history,
                        HorizontalSpace(width: 10),
                        Text("Rodeo Coat Cavenment newsets",style: TextStyle(color: Appcolor.contentmain,fontSize: 15),)
                      ],
                    ),
                  )
                ],
              )),
            ),
            Visibility(
              visible: visible,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13, top: 20),
                  child: GridView.builder(
                      itemCount: 10,
                      primary: false,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 15,
                              childAspectRatio: 6 / 9),
                      itemBuilder: (context, index) {
                      return const ProductItemview();
                      
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
