
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class CarouselSlider extends StatelessWidget {
  final List<String>? image;
  const CarouselSlider({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: 280,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
          images: List.generate(
            image!.length,
            (index) => Image.network(
              image![index],
              fit: BoxFit.cover,
              
            )
          ),
          borderRadius: true,
          dotBgColor: Appcolor.blacktransparent,
          dotColor: Appcolor.contentsecond,
          dotIncreasedColor: Appcolor.contentmain,
        ),
      ),
    );
  }
}