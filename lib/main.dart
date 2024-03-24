//  //   ///
//  Iimport LIBRARIES
import 'package:flutter/material.dart';
//  Iimport FILES
import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';
//  PARTS
//  PROVIDERS
//  //  ///

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Riverpod Providers',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme(isDarkmode: false).getTheme(),
    );
  }
}
