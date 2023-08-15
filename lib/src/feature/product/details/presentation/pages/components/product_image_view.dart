
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/product/details/presentation/pages/components/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductImageView extends StatelessWidget {
  final List<dynamic> image;

  const ProductImageView(
      {super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    List<String> images = [];
    for (int i = 0; i < image.length; i++) {
      images.add(image[i].toString());
    }
    return Container(
      color: Appcolor.white,
      width: MediaQuery.of(context).size.width,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Center(
            child: CarouselSlider(
          image: images,
        )),
      ]),
    );
  }
}