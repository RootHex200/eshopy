

import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});