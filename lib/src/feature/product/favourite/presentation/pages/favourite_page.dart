import 'package:eshopy/src/core/common/widgets/card_item/card_items.dart';
import 'package:eshopy/src/core/common/widgets/card_item/model/card_item_model.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/cart/presentation/pages/cart_page.dart';
import 'package:flutter/material.dart';

class Favouritepage extends StatelessWidget {
  const Favouritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Appcolor.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      icon: Appicon.arrowBack,
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
            Expanded(
                child: CardItems(
              addCart: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cartpage()));
              },
              delete: () {},
              data: [
                //generate cart model item
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
          ],
        ),
      ),
    );
  }
}
