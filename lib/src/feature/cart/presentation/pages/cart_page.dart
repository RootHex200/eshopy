import 'package:eshopy/src/core/common/widgets/app_bar_widget.dart';
import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/card_item/card_items.dart';
import 'package:eshopy/src/core/common/widgets/card_item/model/card_item_model.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/product_order/presentation/pages/add_order/create_order_page.dart';
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
              padding: const EdgeInsets.only( left: 20),
              child: const Appbarwidget(title: "Your Cart",bottomnavpage: true,),
            ),
              Expanded(
                  child: CardItems(
                increment: () {},
                decrement: () {},
                delete: () {},
                data: [
                  CardItemModel(
                      productImage: "http://192.168.1.21:3000/shoes.jpeg",
                      productName: "Product Name",
                      productPrice: 200,
                      id: 2),
                  CardItemModel(
                      productImage: "http://192.168.1.21:3000/shoes.jpeg",
                      productName: "Product Name",
                      productPrice: 200,
                      id: 2),
                  CardItemModel(
                      productImage: "http://192.168.1.21:3000/shoes.jpeg",
                      productName: "Product Name",
                      productPrice: 200,
                      id: 2),
                  CardItemModel(
                      productImage: "http://192.168.1.21:3000/shoes.jpeg",
                      productName: "Product Name",
                      productPrice: 200,
                      id: 2),
                ],
              )),
              const VerticalSpace(height: 5),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
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
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Createorder()));
                    },
                    child: Center(
                      child: Buttonwidget(
                        text: "Order now",
                        color: Appcolor.primaryColor,
                        textcolor: Appcolor.white,
                        width: MediaQuery.of(context).size.width-20,
                        fontWeight: FontWeight.bold,
                      ),
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
