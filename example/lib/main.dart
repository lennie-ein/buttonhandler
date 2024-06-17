import 'package:buttonhandler/buttonhandler.dart';
import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int sumResult;
  late Future<int> sumAsyncResult;
  bool onLongPress = false;

  @override
  void initState() {
    super.initState();
    PhysicalButtonsHandler.listen(handleKey);
  }

  void handleKey(var key) {
    print(key);
    setState(() {
      switch (key) {
        case "shmaker.android.intent.action.SCANER_KEYEVENT_LONG":
          onLongPress = true;
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  icon: Icon(Icons.ice_skating),
                );
              });

          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hardware buttons find'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                Text(
                  'This calls a native function through FFI that is shipped as source in the package. '
                  'The native code is built as part of the Flutter Runner build.',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
