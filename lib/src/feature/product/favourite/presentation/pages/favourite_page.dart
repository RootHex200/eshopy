import 'package:eshopy/src/core/common/widgets/app_bar_widget.dart';
import 'package:eshopy/src/core/common/widgets/card_item/card_items.dart';
import 'package:eshopy/src/core/common/widgets/card_item/model/card_item_model.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/cart/presentation/pages/cart_page.dart';
import 'package:eshopy/src/feature/product/details/presentation/pages/details_page.dart';
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
              padding: const EdgeInsets.only( left: 20),
              child: const Appbarwidget(title: "Your Wishlist",bottomnavpage: true),
            ),
            Expanded(
                child: CardItems(
              addCart: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cartpage()));
              },
              delete: () {},
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Detailspage()));
              },
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
