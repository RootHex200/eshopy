import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/product/details/presentation/pages/details_page.dart';
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
              child: Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
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
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (contest, index) {
                            return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                    height: 200,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(3),
                                        image: const DecorationImage(
                                            filterQuality: FilterQuality.high,
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "http://192.168.1.21:3000/shoes.jpeg")))));
                          }),
                    ),
                  ),
                  const VerticalSpace(height: 30),
                  const Padding(
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
                  const Padding(
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
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Detailspage()));
                          },
                          child: Container(
                            width: 160,
                            decoration: const BoxDecoration(
                              color: Appcolor.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Image(
                                      height: 130,
                                      fit: BoxFit.cover,
                                      filterQuality: FilterQuality.high,
                                      image: NetworkImage(
                                          "http://192.168.1.21:3000/shoes2.jpeg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "Sherlock and firends",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Appcolor.contentsecond,
                                            fontSize: 14),
                                      ),
                                      const VerticalSpace(height: 5),
                                      const Text(
                                        "Dusty Coat invetigation dfdfadfa",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Appcolor.contentmain,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const VerticalSpace(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                              width: 100,
                                              child: Text(
                                                "\$1188.99",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color:
                                                        Appcolor.primaryColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              )),
                                          // Expanded(child: Container()),
                                          Container(
                                            height: 32,
                                            width: 62,
                                            decoration: const BoxDecoration(
                                                color: Appcolor.primaryColor,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Appicon.whiteStar,
                                                  HorizontalSpace(width: 5),
                                                  Text(
                                                    "4.5",
                                                    style: TextStyle(
                                                        color: Appcolor.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                          width: 100,
                                          child: Text(
                                            "\$118.99",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Appcolor.black,
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
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
