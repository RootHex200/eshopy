

import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class OrderBillingAddress extends StatelessWidget {
  const OrderBillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return                    Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Appcolor.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12)),
                    child:  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Change",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Appcolor.primaryColor),
                            )),
                        VerticalSpace(height: 10),
                        Text(
                          "Name: Sabitur Rahman",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Appcolor.contentmain),
                        ),
                        VerticalSpace(height: 10),
                        Text(
                          "Phone: 015506959300",
                          style: TextStyle(
                              fontSize: 15, color: Appcolor.contentmain),
                        ),
                        Text(
                          "Address: didar scholl cumilla,meghan,Bangladesh",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, color: Appcolor.contentmain),
                        ),
                        Text(
                          "Postal code: 015506",
                          style: TextStyle(
                              fontSize: 15, color: Appcolor.contentmain),
                        ),
                        Text(
                          "City: Comilla",
                          style: TextStyle(
                              fontSize: 15, color: Appcolor.contentmain),
                        ),
                        Text(
                          "Country: Bangladesh",
                          style: TextStyle(
                              fontSize: 15, color: Appcolor.contentmain),
                        ),
                        Text(
                          "This is your deafult address",
                          style: TextStyle(
                              fontSize: 15, color: Appcolor.contentmain),
                        ),
                        Text(
                          "Location Type: HOME",
                          style: TextStyle(
                              fontSize: 15, color: Appcolor.contentmain),
                        ),
                      ],
                    ),
                  );
  }
}