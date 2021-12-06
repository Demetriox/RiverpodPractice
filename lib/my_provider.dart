import 'package:riverpod/riverpod.dart';

final StateProvider<int> thirdProvider = StateProvider((ref) => 2000);

final theInt = StateNotifierProvider((_) => TheThird(_));

class TheThird extends StateNotifier<int> {
  TheThird(_) : super(_);

  addInt(int theint) {
    state = theint++;
  }

  removeInt(int theint) {
    state = theint--;
  }
}
