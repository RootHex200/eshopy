
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/core/common/widgets/options_list/model/setting_option_mode.dart';
import 'package:eshopy/src/feature/product_order/presentation/pages/complete_order/complete_orders_page.dart';
import 'package:eshopy/src/feature/product_order/presentation/pages/my_order/my_orders_page.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/change_password_page.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/customer_support_page.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/invite_friend_page.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/logout_page.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/rate_application_page.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/shop_profile_page.dart';

class UserAccountoptiondata{
    static List<OptionModel> getUserAccountOptionsData() {
    return [
      OptionModel(icon:Appicon.shop, name: 'Shop Profile',navigateTo: const Shopprofile()),
      OptionModel(icon: Appicon.changePassword, name: 'Change password',navigateTo: const Changepassword()),
      OptionModel(icon: Appicon.myOrder, name: 'My order',navigateTo: const Myoderspage()),
      OptionModel(icon: Appicon.completeOrder, name: 'Complete order',navigateTo: const Completeorderspage()),
      OptionModel(icon: Appicon.inviteFriend, name: 'Invite friend',navigateTo: const Invitefriend()),
      OptionModel(icon: Appicon.customerSupport, name: 'Customer support',navigateTo: const Customersupport()),
      OptionModel(icon: Appicon.rateapplication, name: 'Rate our application',navigateTo: const Rateapplication()),
      OptionModel(icon: Appicon.logout, name: 'Logout',navigateTo: const Logout()),
    ];
  }
}