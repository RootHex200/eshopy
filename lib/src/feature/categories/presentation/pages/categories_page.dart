import 'package:eshopy/src/core/common/widgets/app_bar_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/categories/presentation/pages/sub_category_page.dart';
import 'package:flutter/material.dart';

List categoriesImage = [
  "http://192.168.1.21:3000/categories-show.png",
  "http://192.168.1.21:3000/categories-show1.png",
  "http://192.168.1.21:3000/categories-show2.png",
  "http://192.168.1.21:3000/categories-show.png",
  "http://192.168.1.21:3000/categories-show.png",
  "http://192.168.1.21:3000/categories-show1.png",
  "http://192.168.1.21:3000/categories-show2.png",
  "http://192.168.1.21:3000/categories-show.png",
];

class Categoriespage extends StatelessWidget {
  const Categoriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Appbarwidget(title: "Categories")),
            Expanded(
              child: ListView.builder(
                  itemCount: categoriesImage.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Subcategorypage()));
                      },
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Appcolor.grey.withOpacity(0.2),
                          image: DecorationImage(
                            image: NetworkImage(categoriesImage[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
