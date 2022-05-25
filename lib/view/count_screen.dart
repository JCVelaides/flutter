import 'package:flutter/material.dart';

class ContadorFul( extends StatefulWidget {
  const ContadorFul({Key? key}) : super(key: key);

  @override
  State<ContadorFul> createState() => _ContadorState();
}

class _ContadorState extends State<ContadorFul> {
  int cont = 10;
  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 24);
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
            showMessage();
          }),
    );
  }

  void showMessage() {
    print('Hi again');

    setState(() {
      cont++;
    });
  }
}
