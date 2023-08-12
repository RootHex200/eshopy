import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/utils/colors/app_colors.dart';
import 'package:eshopy/src/feature/cart/presentation/pages/components/card_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      shrinkWrap: true,
      primary: false,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            height: 150,
            width: double.maxFinite,
            decoration:  BoxDecoration(
              border: Border.all(style: BorderStyle.solid,color: Appcolor.balckOpacity.withOpacity(0.2)),
                color: Appcolor.white,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Lorem Ipsum has been the industry's", //"flutter container decoration border radius, flutter container decoration border radius, flutter container decoration border radius",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Appcolor.contentmain,
                                )),
                            const VerticalSpace(height: 5),
                            const Text(
                              "৳200",
                              style: TextStyle(
                                  color: Appcolor.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const VerticalSpace(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Consumer(
                                  builder: (context, ref, child) => InkWell(
                                    onTap: () {},
                                    child: const CardButton(
                                      bodercolor: Appcolor.balckOpacity,
                                      icondata: (Icons.add),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "1",
                                  style: TextStyle(
                                      color: Appcolor.primaryColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Consumer(
                                  builder: (context, ref, child) {
                                    return InkWell(
                                      onTap: () {},
                                      child: const CardButton(
                                        bodercolor: Appcolor.balckOpacity,
                                        icondata: (Icons.remove),
                                      ),
                                    );
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const CardButton(
                                    bodercolor: Appcolor.primaryColor,
                                    icondata: (Icons.delete),
                                    iconcolor: Appcolor.primaryColor,
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Appcolor.balckOpacity,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.1.21:3000/image.png")),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
