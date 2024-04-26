import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Segunda Aplicação",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}