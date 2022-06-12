import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movplus_mvvm/common/screenutil/screenutil.dart';

import 'app.dart';

void main() {
  ScreenUtil.init();

  runApp(const ProviderScope(child: App()));
}
