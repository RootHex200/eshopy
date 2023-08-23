
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class Rowtext extends StatelessWidget {
  const Rowtext({super.key,required this.firsttext,required this.secondtext});
  final String firsttext;
  final String secondtext;

  @override
  Widget build(BuildContext context) {
    return                     Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(firsttext.toString(),style: const TextStyle(color: Appcolor.contentmain,fontWeight: FontWeight.bold,fontSize: 16),),
                      Text(secondtext,style: const TextStyle(color: Appcolor.contentmain,fontWeight: FontWeight.bold,fontSize: 16),),
                    ],
                  );
  }
}