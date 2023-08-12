


import 'package:eshopy/src/feature/setting/data/model/setting_option_mode.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/about_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/currency_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/language_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/privacy_policy_page.dart';
import 'package:eshopy/src/feature/setting/presentation/pages/setting_options_page/terms_condition_page.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart' show Icons;

class SettingOptionDataSource{

  static List<SettingOptionModel> getSettingOptionsData() {
    return [
      SettingOptionModel(icon: Icons.currency_exchange, name: 'Currency', hint: 'USD',navigateTo: const Currencypage()),
      SettingOptionModel(icon: Icons.language, name: 'Language', hint: 'English(USA)',navigateTo: const Languagepage()),
      SettingOptionModel(icon: Icons.privacy_tip_outlined, name: 'Privacy Policy', hint: '',navigateTo: const PrivacyPolicypage()),
      SettingOptionModel(icon: CupertinoIcons.collections, name: 'Terms & Condition', hint: '',navigateTo: const TermsConditionpage()),
      SettingOptionModel(icon: CupertinoIcons.info, name: 'About', hint: '',navigateTo: const Aboutpage()),
    ];
  }
}