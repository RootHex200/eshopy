import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/card_item/card_items.dart';
import 'package:eshopy/src/core/common/widgets/card_item/model/card_item_model.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/product_order/presentation/pages/add_order/components/order_billing_address_widget.dart';
import 'package:eshopy/src/feature/product_order/presentation/pages/add_order/components/row_text.dart';
import 'package:flutter/material.dart';

class Createorder extends StatelessWidget {
  const Createorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(size: 32),
          scrolledUnderElevation: 0.0,
          title: const Text(
            "Checkout",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Shipping Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Appcolor.contentmain),
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Text(
                            "+ Add New",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Appcolor.primaryColor),
                          )),
                    ],
                  ),
                  const VerticalSpace(height: 20),
                  const OrderBillingAddress(),
                  const VerticalSpace(height: 20),
                  CardItems(checkout: true, data: [
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
                  ]),
                  const VerticalSpace(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: "2 Item(s). Subtotal: ",
                        style: TextStyle(
                            color: Appcolor.contentmain, fontSize: 15),
                      ),
                      TextSpan(
                        text: "340.0 TK",
                        style: TextStyle(
                            color: Appcolor.contentmain,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ])),
                  ),
                  const VerticalSpace(height: 10),

                  const Rowtext(
                      firsttext: "(+) Shipping charge (EST)",
                      secondtext: "+ ৳ 120"),
                  const VerticalSpace(height: 10),
                  //oder note
                  const Text(
                    "Order Note",
                    style: TextStyle(
                        color: Appcolor.contentmain,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const VerticalSpace(height: 10),
                  const TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText:
                          "Notes about your order,e.g.special notes for delivery",
                      hintStyle:
                          TextStyle(color: Appcolor.contentmain, fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide:
                            BorderSide(color: Appcolor.contentmain, width: 1),
                      ),
                    ),
                  ),
                  const VerticalSpace(height: 20),
                  const Divider(
                    color: Appcolor.contentmain,
                    height: 2,
                  ),
                  const VerticalSpace(height: 10),
                  const Rowtext(
                      firsttext: "(2) Items Total", secondtext: "৳ 120"),
                  const VerticalSpace(height: 20),
                  const Buttonwidget(
                    text: "Place Order",
                    color: Appcolor.primaryColor,
                    textcolor: Appcolor.white,
                    fontWeight: FontWeight.bold,
                  ),
                  const VerticalSpace(height: 20),
                ],
              ),
            ),
          ),
        ));
  }
}
