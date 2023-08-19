

import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class Productorderswidget extends StatelessWidget {
  const Productorderswidget({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 6,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Center(
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          color: Appcolor.white,
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.21:3000/shoes.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width - 130,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Cavement",
                                style: TextStyle(
                                    color: Appcolor.contentsecond,
                                    fontSize: 13),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                decoration: BoxDecoration(
                                    color: Appcolor.contentsecond,
                                    borderRadius:
                                        BorderRadius.circular(5)),
                                child: const Text(
                                  "Delivered",
                                  style: TextStyle(
                                      color: Appcolor.white,
                                      fontSize: 13),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context)
                                        .size
                                        .width -
                                    200,
                                child: const Text(
                                  "Cavement Rodeo Dust coat",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Appcolor.contentsecond,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(
                                width: 70,
                                child: Text(
                                  "\$125.6666655",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Appcolor.contentsecond,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        const VerticalSpace(height: 20),
                        const Text(
                          "Ordered: 2022-03-03",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Appcolor.contentsecond,
                              fontSize: 14),
                        ),
                        const VerticalSpace(height: 6),
                        const Text(
                          "Shipping company: DHIL",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Appcolor.contentsecond,
                              fontSize: 14),
                        ),
                        const VerticalSpace(height: 6),
                        const Text(
                          "Tracking number: 121232323232323232",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Appcolor.contentsecond,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                const VerticalSpace(height: 10),
                const Divider(
                    height: 1, color: Appcolor.contentsecond)
              ],
            ),
          );
        });
  }
}
