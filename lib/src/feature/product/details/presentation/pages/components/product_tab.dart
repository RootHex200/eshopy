

import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class Producttab extends StatelessWidget {
  const Producttab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text("\$125.0",style: TextStyle(color: Appcolor.contentmain,fontWeight: FontWeight.bold,fontSize: 24),),
          const VerticalSpace(height: 6),
          Row(children: [
                      Container(
            height: 40,
            width: 40,
            color: Appcolor.primaryColor,
            child: const Center(child: Text("74%",style: TextStyle(color: Appcolor.white,fontSize: 18),)),
          ),
          const HorizontalSpace(width: 15),
          const Text("\$125.0",style: TextStyle(color: Appcolor.contentsecond,fontSize: 18,decoration: TextDecoration.lineThrough),),
          ],),
      
      const VerticalSpace(height: 15),
     const Text("Cavement Rodos Dusty coat",style: TextStyle(color: Appcolor.contentmain,fontSize: 24),),

     const VerticalSpace(height: 15),

       Row(
      children: [
        const Icon(Icons.star,color: Appcolor.yellowStar,size: 20,),
        const HorizontalSpace(width: 5),
        RichText(text: const TextSpan(children: [
          TextSpan(text: "4.5",style: TextStyle(color: Appcolor.contentmain,fontSize: 14,fontWeight: FontWeight.bold)),
          TextSpan(text: " (200)",style: TextStyle(color: Appcolor.contentsecond,fontSize: 15)),
        ])),
      const HorizontalSpace(width: 8),
      // const VerticalDivider(color: Appcolor.contentsecond,thickness: 1,),
      const HorizontalSpace(width: 8),
              RichText(text: const TextSpan(children: [
          TextSpan(text: "Order Complete",style: TextStyle(color: Appcolor.contentmain,fontSize: 14,fontWeight: FontWeight.bold)),
          TextSpan(text: " (200)",style: TextStyle(color: Appcolor.contentsecond,fontSize: 15)),
        ])),
              const HorizontalSpace(width: 8),
      // const VerticalDivider(color: Appcolor.contentsecond,thickness: 1,),
      const HorizontalSpace(width: 8),
                    RichText(text: const TextSpan(children: [
          TextSpan(text: "Reviews",style: TextStyle(color: Appcolor.contentmain,fontSize: 14,fontWeight: FontWeight.bold)),
          TextSpan(text: " (200)",style: TextStyle(color: Appcolor.contentsecond,fontSize: 15)),
        ])),
      ],
     )
        ]),
      ),
    );
  }
}