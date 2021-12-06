import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'my_provider.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyNotifier extends StateNotifier<List<String>> {
  MyNotifier() : super([]);
  void addString(String stringToAdd) {
    state = [...[], stringToAdd];
  }
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int myNumber = ref.watch(thirdProvider);

    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Text('some number $myNumber'),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              ref.read(thirdProvider.state).state++;
            },
          )
        ],
      ),
    ));
  }
}
