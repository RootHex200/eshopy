import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart' show Icon, Icons;

class Appicon {
  static const Icon search = Icon(
    Icons.search,
    size: 30,
  );
  static const Icon conversationbubble = Icon(
    CupertinoIcons.conversation_bubble,
    size: 30,
  );
  static const Icon notification = Icon(
    Icons.notifications_none_outlined,
    size: 30,
  );
  static const Icon arrowForward = Icon(
    Icons.arrow_forward_ios,
    size: 15,
    color: Appcolor.black,
  );
  static const Icon arrowBack = Icon(
    Icons.arrow_back,
    size: 32,
    color: Appcolor.contentmain,
  );

  static const Icon filter = Icon(
    Icons.filter_alt_outlined,
    size: 32,
    color: Appcolor.contentmain,
  );
  static const Icon mic = Icon(
    CupertinoIcons.mic,
    size: 32,
    color: Appcolor.contentmain,
  );

  static const Icon history = Icon(
    Icons.history,
    size: 26,
    color: Appcolor.contentmain,
  );
  static const Icon whiteStar = Icon(
    Icons.star,
    color: Appcolor.white,
    size: 20,
  );
  static const Icon shoppingcart = Icon(
    Icons.shopping_cart,
    size: 32,
  );
  static const Icon share = Icon(
    Icons.share_outlined,
    size: 32,
  );
  static const Icon favorite = Icon(
    Icons.favorite_outline,
    size: 32,
  );
  static const Icon yellowStar = Icon(
    Icons.star,
    color: Appcolor.yellowStar,
    size: 20,
  );
  static const Icon forward = Icon(
    CupertinoIcons.forward,
    size: 25,
    color: Appcolor.contentmain,
  );
  static const Icon add=Icon(Icons.add,color: Appcolor.black);
  static const Icon remove=Icon(Icons.remove,color: Appcolor.black);
  static const Icon delete=Icon(Icons.delete,color: Appcolor.primaryColor);
  static const Icon home=Icon(Icons.home);
  static const Icon person=Icon(CupertinoIcons.person);
  static const Icon setting=Icon(Icons.settings);
}