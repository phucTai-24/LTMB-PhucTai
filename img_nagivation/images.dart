import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App 02"),
        backgroundColor: Colors.blue,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: const Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Image.asset('assets/images/5700_9_04.jpg'),
            ),
            Expanded(
              child: Image.asset('assets/images/9800_5_2_06.jpg'),
            ),
            Expanded(
              child: Image.asset(
                  'assets/images/z6340761780656_3a33e1e1b4bdb9c581d54c4f3618e37e.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}