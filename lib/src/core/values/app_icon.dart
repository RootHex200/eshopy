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
    Icons.shopping_cart_outlined,
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
  static const Icon add = Icon(Icons.add, color: Appcolor.black);
  static const Icon remove = Icon(Icons.remove, color: Appcolor.black);
  static const Icon delete = Icon(Icons.delete, color: Appcolor.primaryColor);
  static const Icon home = Icon(
    Icons.home,
    size: 32,
  );
  static const Icon person = Icon(
    CupertinoIcons.person,
    size: 32,
  );
  static const Icon setting = Icon(
    Icons.settings,
    size: 32,
  );
  static const Icon email = Icon(
    Icons.email_outlined,
    size: 32,
  );
  static const Icon password = Icon(
    Icons.lock_outline,
    size: 32,
  );
  static const Icon passwrodVisible = Icon(
    Icons.lock_rounded,
    weight: 1,
  );
  static const Icon passwordInvisible = Icon(Icons.lock_open_rounded);
  static const Icon date = Icon(
    Icons.calendar_today_outlined,
    size: 32,
  );
  static const Icon back = Icon(
    CupertinoIcons.back,
    size: 32,
    color: Appcolor.primaryColor,
  );
  static const Icon arrowdown = Icon(
    CupertinoIcons.chevron_down,
    size: 30,
  );
  static const Icon location = Icon(
    Icons.location_on_outlined,
    size: 20,
  );
  static const Icon currency=Icon(Icons.currency_exchange,color: Appcolor.contentmain,);
  static const Icon language=Icon(Icons.language,color: Appcolor.contentmain,);
  static const Icon privacy=Icon(Icons.privacy_tip_outlined,color: Appcolor.contentmain,);
  static const Icon terms=Icon(Icons.collections,color: Appcolor.contentmain,);
  static const Icon about=Icon(CupertinoIcons.info,color: Appcolor.contentmain,);
  static const Icon shop=Icon(Icons.shop,color: Appcolor.contentmain,);
  static const Icon logout=Icon(Icons.logout,color: Appcolor.contentmain,);
  static const Icon customerSupport=Icon(Icons.support_agent,color: Appcolor.contentmain,);
  static const Icon inviteFriend=Icon(Icons.person_add_alt_1_outlined,color: Appcolor.contentmain,);
  static const Icon completeOrder=Icon(Icons.check_circle_outline,color: Appcolor.contentmain,);
  static const Icon myOrder=Icon(Icons.privacy_tip_outlined,color: Appcolor.contentmain,);
  static const Icon changePassword=Icon(Icons.lock_outline,color: Appcolor.contentmain,);
  static const Icon rateapplication=Icon(Icons.star_outline,color: Appcolor.contentmain,);
  static const Icon phone=Icon(Icons.phone,color: Appcolor.contentmain,size: 30,);
}
