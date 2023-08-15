

import 'package:eshopy/src/core/common/widgets/card_item/model/card_item_model.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/common/widgets/card_item/card_button.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/product/details/presentation/pages/details_page.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  final Function? increment;
  final Function? decrement;
  final Function? delete;
  final Function? addCart;
  final List<CardItemModel>? data;
  
  const CardItems({
    super.key,
    this.increment,
    this.decrement,
    this.delete,
    this.addCart,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      shrinkWrap: true,
      primary: false,
      itemCount: data!.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            if(addCart!=null){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const Detailspage()));
            }
          },
          child: Container(
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
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration:  BoxDecoration(
                            color: Appcolor.balckOpacity,
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    data![index].productImage.toString())),
                          ),
                        ),
                      ),
                    ),
                  
                  
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                  data![index].productName.toString(), //"flutter container decoration border radius, flutter container decoration border radius, flutter container decoration border radius",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Appcolor.contentmain,
                                  )),
                              const VerticalSpace(height: 5),
                               Text(
                                data![index].productPrice.toString(),
                                style:const TextStyle(
                                    color: Appcolor.primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              const VerticalSpace(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  addCart==null? InkWell(
                                    onTap: increment as void Function()?,
                                    child: CardButton(
                                      icon: Appicon.add,
                                      bgcolor: Appcolor.balckOpacity.withOpacity(0.1),
                                      bodercolor: Appcolor.balckOpacity,
                                    ),
                                  ): InkWell(
                                    onTap: addCart as void Function()?,
                                    child: const CardButton(
                                      icon: Appicon.shoppingcart,
                                      bgcolor: Appcolor.primaryColor,
                                      bodercolor: Appcolor.primaryColor,
                                    ),
                                  ),
                              addCart==null?  Text(
                                    1.toString(),
                                    style: const TextStyle(
                                        color: Appcolor.primaryColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ):const SizedBox(),
                                  addCart==null?InkWell(
                                    onTap: decrement as void Function()?,
                                    child:  CardButton(
                                      icon: Appicon.remove,
                                      bgcolor: Appcolor.balckOpacity.withOpacity(0.1),
                                      bodercolor: Appcolor.balckOpacity,
                                    ),
                                  ):const SizedBox(),
                                  GestureDetector(
                                    onTap: delete as void Function()?,
                                    child:  CardButton(
                                      icon: Appicon.delete,
                                      bgcolor: Appcolor.balckOpacity.withOpacity(0.1),
                                      bodercolor: Appcolor.primaryColor,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                    
                  ],
                ),
              )),
        );
      },
    );
  }
}
