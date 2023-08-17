

import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/categories/presentation/pages/categories_page.dart';
import 'package:eshopy/src/feature/product/home/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            //TOP BAR
            Container(
              
              color: Appcolor.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    
                     SizedBox(
                      width: MediaQuery.of(context).size.width -150,
                      height: 45,
                      child:TextField(
                        readOnly: true,
                        autofocus: true,
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Searchpage()));
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 10),
                          hintText: "Search .......",
                          hintStyle: const TextStyle(color: Appcolor.grey,fontSize: 18),
                          prefixIcon: Appicon.search,
                          fillColor: Appcolor.grey.withOpacity(0.1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none
                          )
                        ),
                    
                      ) ,
                    ),
                    const HorizontalSpace(width: 13),
                    IconButton(                  
                      icon: Appicon.conversationbubble,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Appicon.notification,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
      
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                                 //BANNER
                            const Image(image: NetworkImage("http://192.168.1.21:3000/image.png")),
                            const VerticalSpace(height: 30),
                            
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                             child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Category",style: TextStyle(color: Appcolor.contentmain,fontSize: 27,fontWeight: FontWeight.bold),),
                  Expanded(child: Container()),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Categoriespage()));
                    },
                    child: const Row(
                      children: [
                        Text("See More",style: TextStyle(color: Appcolor.black,fontSize: 18),),
                        HorizontalSpace(width: 8),
                        Appicon.arrowForward
                      ],
                    ),
                  )
                ],
                       ),
                           ),
                            // const VerticalSpace(height: 10),
                      
                            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contest,index){
                     
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 200,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                              image: NetworkImage("http://192.168.1.21:3000/bag1.jpeg")))));
                            
                  }),
                ),
                            ),
                            const VerticalSpace(height: 10),
                         Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                             child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Best Sellers",style: TextStyle(color: Appcolor.contentmain,fontSize: 27,fontWeight: FontWeight.bold),),
                      Text("Style you might like",style: TextStyle(color: Appcolor.contentmain,fontSize: 18,))
                    ],
                  ),
                  Expanded(child: Container()),
                  const Row(
                    children: [
                      Text("See More",style: TextStyle(color: Appcolor.black,fontSize: 18),),
                      HorizontalSpace(width: 8),
                      Appicon.arrowForward
                    ],
                  )
                ],
                       ),
                           ),
                            // const VerticalSpace(height: 10),
                      
                            Padding(
                padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                child: SizedBox(
                  height: 210,
                  child: ListView.builder(
                    
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contest,index){
                     
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          height: 210,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Appcolor.white,
                            border: Border.all(style: BorderStyle.solid,color: Appcolor.borderColor),
                          ),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(
                                height: 130,
                                width: 160,
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high,
                                image: NetworkImage("http://192.168.1.21:3000/download.jpeg")),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  
                                  Text("Areosoles",overflow: TextOverflow.ellipsis,style: TextStyle(color: Appcolor.balckOpacity,fontSize: 14),),
                                  VerticalSpace(height: 5),
                                  
                                  Text("Summer Heels Star",overflow: TextOverflow.ellipsis,style: TextStyle(color: Appcolor.black,fontSize: 15),),
                                  VerticalSpace(height: 5),
                                  
                                  Text("\$118.99",overflow: TextOverflow.ellipsis,style: TextStyle(color: Appcolor.black,fontSize: 17),),
                                  
                                ],
                              ),
              
                            )
                            ],
                          ),
                          
                          )
                          );
                            
                  }),
                ),
                            )
                          
                          
                          
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}