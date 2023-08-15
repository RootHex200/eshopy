

import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/cart/presentation/pages/cart_page.dart';
import 'package:eshopy/src/feature/product/favourite/presentation/pages/favourite_page.dart';
import 'package:eshopy/src/feature/product/home/presentation/pages/home_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_page.dart';
import 'package:eshopy/src/main/presentation/provider/bottom_nav_provider.dart';
import 'package:eshopy/src/main/presentation/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List pages=[
  const Homepage(),
  const Favouritepage(),
  const Cartpage(),
  const User(),
  const Settingpage()
];
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Consumer(
        builder: (context, ref, child) {
          final index =ref.watch(bottomNavProvider);
          return pages[index];
        },
      ),
      bottomNavigationBar: Consumer(

        builder: (context,ref,child){
          return BottomNavigationBar(
            elevation: 0,
          currentIndex: ref.watch(bottomNavProvider),
          selectedItemColor: Appcolor.primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: (value){
            ref.read(bottomNavProvider.notifier).state=value;
          },
          items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'person'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ]);
        }
      ),
    );
  }
}