import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/star_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.home,
          color: Colors.black,
          size: 48,
        ),
      ),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 24,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Flutter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Aprenda Flutter no seu tempo',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Bora aprender Flutter! Cursos por apenas R\$22.90. Qualidade Garantida.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StarWidget(),
                  StarWidget(),
                  StarWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
