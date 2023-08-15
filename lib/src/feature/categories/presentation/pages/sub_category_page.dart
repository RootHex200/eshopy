import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//temp data
Map<String, dynamic> subcategory = {
  "subcategory": [
    {
      "name": "man's apparel",
      "data": [
        //write a object with just product name
        {
          "name": "T-shirt",
        },
        {
          "name": "T-shirt",
        },
        {
          "name": "T-shirt",
        }
      ]
    },
    {
      "name": "woman's apparel",
      "data": [
        {
          "name": "T-shirt",
        },
        {
          "name": "T-shirt",
        },
        {
          "name": "T-shirt",
        },
      ]
    },
    {
      "name": "woman's apparel",
      "data": [
        {
          "name": "T-shirt",
        },
        {
          "name": "T-shirt",
        },
        {
          "name": "T-shirt",
        },
      ]
    },
  ]
};

class Subcategorypage extends StatelessWidget {
  const Subcategorypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Appcolor.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 32,
                        )),
                    const HorizontalSpace(width: 20),
                    const Text(
                      'Clothes & shoes',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Appcolor.contentmain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const VerticalSpace(height: 10),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: subcategory["subcategory"].length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${subcategory["subcategory"][index]["name"]}",
                            style: const TextStyle(
                                fontSize: 20, color: Appcolor.contentmain),
                          ),
                          const VerticalSpace(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Appcolor.white,
                            ),
                            child: ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: subcategory["subcategory"][index]
                                        ["data"]
                                    .length,
                                itemBuilder: (context, index2) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                "${subcategory["subcategory"][index]["data"][index2]["name"]}",
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Appcolor
                                                        .contentsecond)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  CupertinoIcons.forward,
                                                  size: 25,
                                                  color: Appcolor.contentmain,
                                                )),
                                          ],
                                        ),
                                        const VerticalSpace(height: 5),
                                        index2 ==
                                                (subcategory["subcategory"]
                                                            [index]["data"]
                                                        .length -
                                                    1)
                                            ? const SizedBox()
                                            : Divider(
                                                height: 1,
                                                color: Appcolor.grey
                                                    .withOpacity(0.3),
                                              ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          const VerticalSpace(height: 28),
                          index == (subcategory["subcategory"].length - 1)
                              ? const SizedBox()
                              : Divider(
                                  height: 1,
                                  color: Appcolor.contentmain.withOpacity(0.3),
                                )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
