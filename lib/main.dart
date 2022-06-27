import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'app.dart';
import 'common/screenutil/screenutil.dart';
import 'data/tables/movie_table.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ScreenUtil.init();

  final appDocumentdir = await path_provider.getApplicationDocumentsDirectory();

  Hive.init(appDocumentdir.path);

  Hive.registerAdapter(MovieTableAdapter());

  runApp(const ProviderScope(child: App()));
}
