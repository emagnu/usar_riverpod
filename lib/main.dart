//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
// import 'config/router/app_router.dart';
// import 'config/theme/app_theme.dart';
import './config/config.dart';
//  PARTS
//  PROVIDERS
//  //  ///

void main() => runApp(const ProviderScope(child: MyApp()));

// class MyApp extends StatelessWidget {
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Riverpod Providers',
      debugShowCheckedModeBanner: false,
      // routerConfig: appRouter,
      routerConfig: appRouter,
      theme: AppTheme(isDarkmode: false).getTheme(),
    );
  }
}


//  //   ///
//  Import LIBRARIES
//  Import FILES
//  PARTS
//  PROVIDERS
//  //  ///