//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  PARTS
//  PROVIDERS
//  //  ///

class FutureProviderScreen extends StatelessWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: const Center(
        child: Text('Fernando Herrera'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {},
      ),
    );
  }
}
