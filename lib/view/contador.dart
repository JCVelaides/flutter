import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 24);
    int cont = 10;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 222, 222),
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Number push",
              style: TextStyle(fontSize: 32.0, color: Colors.blue),
            ),
            Text('$cont', style: sizeText),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_alarm),
          onPressed: () {
            cont++;
            showMessage();
          }),
    );
  }

  void showMessage() {
    print('Hi again');
  }
}
