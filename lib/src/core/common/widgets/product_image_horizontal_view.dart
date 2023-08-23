import 'package:flutter/material.dart';

class Productitemhorizontal extends StatelessWidget {
  const Productitemhorizontal({
    super.key,
    this.borderRadius = 3,
  });

  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (contest, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                    height: 200,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(borderRadius),
                        image: const DecorationImage(
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "http://192.168.1.21:3000/bag1.jpeg")))));
          }),
    );
  }
}
