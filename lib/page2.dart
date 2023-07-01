import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'StateManager/appState.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);

    if (kDebugMode) {
      print("reload 2");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Page 2"),
            Text(appState.data.toString()),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back Page")),
            TextButton(
                onPressed: () {
                  appState.setData(appState.data - 1);
                },
                child: const Text("ADD DATA"))
          ],
        ),
      ),
    );
  }
}
