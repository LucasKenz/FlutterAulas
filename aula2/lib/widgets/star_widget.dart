import 'package:flutter/material.dart';

class StarWidget extends StatefulWidget {
  const StarWidget({super.key});

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  bool estaFavoritado = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              estaFavoritado = !estaFavoritado;
              print(estaFavoritado);
            });
          },
          child: Icon(
            Icons.star,
            color: estaFavoritado ? Colors.yellow : Colors.white,
            size: 48,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            '+45.000 alunos',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          'Didática garantida',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StarWidget(),
            StarWidget(),
            StarWidget(),
          ],
        ),
      ],
    );
  }
}
