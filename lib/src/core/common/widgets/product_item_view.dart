import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/product/details/presentation/pages/details_page.dart';
import 'package:flutter/material.dart';

class ProductItemview extends StatelessWidget {
  const ProductItemview({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Detailspage()));
      },
      child: Container(
        width: 200,
        decoration: const BoxDecoration(
          color: Appcolor.white,
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Image(
                  height: 130,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: NetworkImage("http://192.168.1.21:3000/shoes2.jpeg")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Sherlock and firends",
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(color: Appcolor.contentsecond, fontSize: 14),
                  ),
                  const VerticalSpace(height: 5),
                  const Text(
                    "Dusty Coat invetigation dfdfadfa",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Appcolor.contentmain,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const VerticalSpace(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                          width: 100,
                          child: Text(
                            "\$1188.99",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Appcolor.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                      // Expanded(child: Container()),
                      Container(
                        height: 32,
                        width: 62,
                        decoration: const BoxDecoration(
                            color: Appcolor.primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Appicon.whiteStar,
                              HorizontalSpace(width: 5),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    color: Appcolor.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                      width: 100,
                      child: Text(
                        "\$118.99",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Appcolor.black,
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
