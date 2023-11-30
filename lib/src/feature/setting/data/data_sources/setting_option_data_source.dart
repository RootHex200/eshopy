


import 'package:eshopy/src/core/common/widgets/setting_options/model/setting_option_model.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/about_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/currency_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/language_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/privacy_policy_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/terms_condition_page.dart';

class SettingOptionDataSource{

  static List<OptionModel> getSettingOptionsData() {
    return [
      OptionModel(icon: Appicon.currency, name: 'Currency', hint: 'USD',navigateTo: const Currencypage()),
      OptionModel(icon: Appicon.language, name: 'Language', hint: 'English(USA)',navigateTo: const Languagepage()),
      OptionModel(icon: Appicon.privacy, name: 'Privacy Policy',navigateTo: const PrivacyPolicypage()),
      OptionModel(icon: Appicon.terms, name: 'Terms & Condition',navigateTo: const TermsConditionpage()),
      OptionModel(icon: Appicon.about, name: 'About',navigateTo: const Aboutpage()),
    ];
  }
}