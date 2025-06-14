import 'package:flutter/material.dart';
import 'package:guesstoget/core/get_it/get_it.dart';
import 'package:guesstoget/core/router/app_router.dart';
import 'package:guesstoget/core/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(MaterialApp.router(routerConfig: AppRouter.router,
  theme: AppTheme.getTheme(),));
}
