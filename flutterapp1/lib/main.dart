import 'package:flutter/material.dart';
import 'screenapp.dart';

void main() => runApp(const MainApp( ScreenApp()));
class MainApp extends StatelessWidget {
  const MainApp(ScreenApp screenApp, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenApp();
  }
}
