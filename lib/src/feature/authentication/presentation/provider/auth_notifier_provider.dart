


import 'package:eshopy/src/core/state/base_state.dart';
import 'package:eshopy/src/feature/authentication/domain/use_cases/auth_use_cases.dart';
import 'package:eshopy/src/feature/authentication/presentation/provider/auth_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authnotifierProvider = StateNotifierProvider<AuthNotifier,BaseState>((ref) {
  return AuthNotifier(ref.watch(authusecaseProvider),ref);
});