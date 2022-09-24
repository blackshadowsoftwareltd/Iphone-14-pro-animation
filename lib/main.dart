import 'package:flutter/material.dart';
import 'helper/size.dart' show ScreenSize;
import 'home.dart' show Home;
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;

void main() {
  runApp(
      ProviderScope(child: MaterialApp(theme: ThemeData(), home: const App())));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return const Home();
  }
}
