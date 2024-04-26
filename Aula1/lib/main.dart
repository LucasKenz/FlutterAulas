import 'package:flutter/material.dart';

main() {
  runApp(const PrimeiroApp());
}

class PrimeiroApp extends StatelessWidget {
  const PrimeiroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Meu Primeiro App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.orange,
        leading: const Icon(
          Icons.person,
        ),
      ),
      body: Column(
        children: [
          const Text("Texto 1"),
          const Text("Texto 2"),
          const Text("Texto 3"),
          const Row(
            children: [
              Text("Texto 4"),
              Text("Texto 5"),
              Text("Texto 6"),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              print('Botão clicado');
            },
            child: const Text('Primeiro Botão'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 4, left: 16, right: 87),
            child: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
    );
  }
}
