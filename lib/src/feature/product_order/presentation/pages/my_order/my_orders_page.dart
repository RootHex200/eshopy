import 'package:eshopy/src/core/common/widgets/product_orders_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class Myoderspage extends StatelessWidget {
  const Myoderspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Appicon.arrowBack),
                const HorizontalSpace(width: 20),
                const Text(
                  'My Orders',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.contentmain,
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpace(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Appcolor.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Productorderswidget(),
            ),
          )
        ],
      ),
    ));
  }
}
