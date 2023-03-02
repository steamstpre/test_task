import 'package:flutter/material.dart';
import 'package:test_3/presentation/main_screen/screen/main_view.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Main Screen'),
        ),
        body: MainScreenView());
  }
}
