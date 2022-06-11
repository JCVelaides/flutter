import 'package:flutter/material.dart';

class ContadorFul extends StatefulWidget {
  const ContadorFul({Key? key}) : super(key: key);

  @override
  State<ContadorFul> createState() => _ContadorState();
}

class _ContadorState extends State<ContadorFul> {
  int cont = 10;

  void increasefn() {
    cont++;
    setState(() {});
  }

  void decreasefn() {
    cont--;
    setState(() {});
  }

  void resetfn() {
    cont = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 30);
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
      floatingActionButton: FloatingCustomW(
          increase: increasefn, decrease: decreasefn, reset: resetfn),
    );
  }
}

class FloatingCustomW extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  const FloatingCustomW(
      {Key? key,
      required this.increase,
      required this.decrease,
      required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              increase();
            }),
        FloatingActionButton(
            child: const Icon(Icons.refresh), onPressed: () => reset()),
        FloatingActionButton(
            child: const Icon(Icons.remove), onPressed: () => decrease()),
      ],
    );
  }
}
