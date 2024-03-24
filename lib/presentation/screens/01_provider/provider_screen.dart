//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
// import '../../providers/hello_world_provider.dart';
import '../../providers/hello_world_provider.dart';
//  PARTS
//  PROVIDERS
//  //  ///

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greetings = ref.watch(helloWorldProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        // child: Text('Manny Emagnu'),
        child: Text(
          'Greetings: $greetings',
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
