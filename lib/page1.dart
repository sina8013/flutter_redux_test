import 'package:flutter/material.dart';
import 'package:flutter_redux_test/StateManager/appState.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final double device_w = MediaQuery.of(context).size.width;
    // final double device_h = MediaQuery.of(context).size.height;

    AppState appState = Provider.of<AppState>(context);

    print("reload");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Page 1"),
            Text(appState.data.toString()),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Page2");
                },
                child: const Text("Next Page")),
            TextButton(
                onPressed: () {
                  appState.setData(appState.data + 1);
                },
                child: const Text("ADD DATA"))
          ],
        ),
      ),
    );
  }
}
