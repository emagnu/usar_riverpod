//  //   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS
part 'state_providers.g.dart';

//  PROVIDERS
//  //  ///
//  --- Counter
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

//  --- Switch dark/light mode
// DarkMode -> boolean default: false
@riverpod
// @Riverpod(keepAlive: true)
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    state = !state;
  }
}

//  --- Change Name
//  username => Tarea - PRovider con estado
//  Default: Bibi Fish
//  username -> String default: 'Bibi Fish'
//  ChangeName(String name)
//  ref.read(usernameProvider.notifier).changeName(RandomGenerator.getRandomName())
@riverpod
class Username extends _$Username {
  @override
  String build() {
    return 'Bibi Fish';
  }

  void changeName(String name) {
    state = name;
  }

  void reset() {
    state = 'Tarea';
  }
}
