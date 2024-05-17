import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nomeDoPokemon = '';
  var controller = TextEditingController();
  bool isLoading = false; // Flag for loading state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Requisições HTTP'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nomeDoPokemon),
            TextField(
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  isLoading = true; // Show loading indicator
                });
                try {
                  Dio dio = Dio();
                  Response response = await dio.get(
                      'https://pokeapi.co/api/v2/pokemon/${controller.text}');
                      // navegação -> PokemonPage
                  setState(() {
                    nomeDoPokemon = response.data['name'];
                    isLoading = false; // Hide loading indicator
                  });
                  print(response.data['types'][0]['type']['name']);
                } catch (error) {
                  // Handle error (e.g., display error message)
                  print(error);
                  setState(() {
                    isLoading = false; // Hide loading indicator in case of error
                  });
                }
              },
              child: const Text(
                'Clique aqui para pegar um Pokemon',
              ),
            ),
            isLoading ? const CircularProgressIndicator() : Container(), // Show loading indicator conditionally
          ],
        ),
      ),
    );
  }
}