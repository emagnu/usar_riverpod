//  //   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS
part 'state_providers.g.dart';
//  PROVIDERS
//  //  ///

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state = state + 1;
  }

  void decrement() {
    state = state - 1;
  }

  void reset() {
    state = 0;
  }
}
