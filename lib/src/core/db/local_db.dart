

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localdbProvider = Provider<Future<SharedPreferences>>((ref) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs;
});