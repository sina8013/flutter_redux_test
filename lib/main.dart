import 'package:flutter/material.dart';
import 'package:flutter_redux_test/StateManager/appState.dart';
import 'package:flutter_redux_test/page1.dart';
import 'package:flutter_redux_test/page2.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: "/Page1",
        routes: {
          "/Page1": (context) => const Page1(),
          "/Page2": (context) => const Page2(),
        },
      ),
    );
  }
}
