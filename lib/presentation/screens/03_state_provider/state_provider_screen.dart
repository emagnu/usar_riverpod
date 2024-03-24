//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../providers/state_providers.dart';
//  PARTS
//  PROVIDERS
//  //  ///

// class StateProviderScreen extends StatelessWidget {
class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40.0),
          const Text('Por favor,\n presione un botón o un icono',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
            icon: const Icon(Icons.dark_mode_outlined, size: 100),
            onPressed: () {},
          ),
          const Text('Presione por un otro numbre:\nBibi Fish',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center),
          TextButton.icon(
            icon: const Icon(
              Icons.add,
              size: 50,
            ),
            // label: const Text('0', style: TextStyle(fontSize: 100)),
            label: Text('$counter', style: const TextStyle(fontSize: 100)),
            onPressed: () {
              ref.read(counterProvider.notifier).increment();
            },
          ),
          const Spacer(flex: 2),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {},
      ),
    );
  }
}
