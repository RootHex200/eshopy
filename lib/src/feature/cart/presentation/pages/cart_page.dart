import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/utils/colors/app_colors.dart';
import 'package:eshopy/src/feature/cart/presentation/pages/components/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Container(
                
                color: Appcolor.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 32,
                          color: Appcolor.contentmain,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Expanded(child: Container()),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Your Cart",
                          style: TextStyle(
                              color: Appcolor.contentmain,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
              const Expanded(child: CartItem()),
              const VerticalSpace(height: 5),
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                decoration: const BoxDecoration(
                  color: Appcolor.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Total Amount",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                              " ৳ 200",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                      ),
                    ]),
              ),
              const VerticalSpace(height: 5),
              Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                      decoration:
                          const BoxDecoration(color: Appcolor.primaryColor),
                      child: const Center(
                          child: Text(
                        "Order",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                      )),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
