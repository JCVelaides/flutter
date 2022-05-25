import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 222, 222),
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Car IV'),
      ),
    );
  }
}
