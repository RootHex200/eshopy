
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/cart/presentation/pages/cart_page.dart';
import 'package:eshopy/src/feature/product/details/presentation/pages/components/product_image_view.dart';
import 'package:eshopy/src/feature/product/details/presentation/pages/components/product_tab.dart';
import 'package:eshopy/src/feature/product/home/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({super.key});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> with SingleTickerProviderStateMixin {
    late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //top
            Container(
                
                color: Appcolor.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 32,
                          color: Appcolor.contentmain,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const HorizontalSpace(width: 10),
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
                            prefixIcon: const Icon(Icons.search,size: 30,),
                            fillColor: Appcolor.grey.withOpacity(0.1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none
                            )
                          ),
                      
                        ) ,
                      ),
                      const HorizontalSpace(width: 10),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart,size: 32,),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Cartpage()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            const ProductImageView(image: [
                  "http://192.168.1.21:3000/shoes.jpeg",
                  "http://192.168.1.21:3000/shoes2.jpeg",
                  "http://192.168.1.21:3000/bag1.jpeg",
                ]),
                 Theme(
          data: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              surfaceVariant: Colors.transparent,
            ),
          ),
          child: TabBar(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Appcolor.contentmain,
            labelColor: Appcolor.primaryColor,
            labelStyle: const TextStyle(
              fontSize: 20,
              
              fontWeight: FontWeight.bold,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),

              color: Appcolor.white,
            
            ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              indicatorColor: Colors.transparent,
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Product",
                ),
                Tab(
                  text: "Details",
                ),
                Tab(
                  text: "Reviews",
                ),
              ]),
        ),
                Expanded(
          child: TabBarView(
            controller: _tabController,
            children:  const [
            Producttab(),
            Center(child: Text("Details"),),
            Center(child: Text("Reviews"),),
          ]),
        ),
      
            Container(
              color: Appcolor.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                                            const HorizontalSpace(width: 6),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined,size: 32,)),
                   
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline,size: 32,)),
                    
                      ],
                    )),
                    Expanded(
                      flex: 2,
                      child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                      decoration: BoxDecoration(
                        color: Appcolor.contentmain,
                        borderRadius: BorderRadius.circular(10)
             
                      ),
                      child: const Center(child: Text("Add to Bag",style: TextStyle(color: Appcolor.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                    ))
                  ],
                ),
              ),
            )
      
          ],
        ),
      ),
    );
  }
}