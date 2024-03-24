//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../../config/helpers/random_generator.dart';
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
    final isDarkMode = ref.watch(darkModeProvider);
    final userName = ref.watch(usernameProvider);

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
          // --- El Sol Y la Luna
          IconButton(
            // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
            icon: isDarkMode
                ? const Icon(Icons.dark_mode_outlined, size: 100)
                : const Icon(Icons.light_mode_outlined, size: 100),
            onPressed: () {
              ref.read(darkModeProvider.notifier).toggle();
            },
          ),
          // ---  El Nombre!
          // const Text('Presione por un otro numbre:\nBibi Fish',
          Text('Presione por un otro numbre:\n$userName',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center),
          //  --- El Contador!
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
        onPressed: () {
          ref
              .read(usernameProvider.notifier)
              .changeName(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}
