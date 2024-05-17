import 'package:flutter_pokemon/home/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Http Request',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}