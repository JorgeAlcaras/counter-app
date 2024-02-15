import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void increase() {
    counter++;
    setState(() {});
  }

  void refresh() {
    counter = 0;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Counter', style: TextStyle(color: Colors.white)),
          elevation: 10,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Clicks',
                style: TextStyle(color: Colors.black, fontSize: 30)),
            Text('$counter',
                style: const TextStyle(color: Colors.blue, fontSize: 50)),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButton(
            decreaseCounter: decrease,
            refreshCounter: refresh,
            incressCounter: increase));
  }
}

class CustomButton extends StatelessWidget {
  int counter = 0;
  final Function incressCounter;
  final Function refreshCounter;
  final Function decreaseCounter;

  CustomButton(
      {Key? key,
      required this.decreaseCounter,
      required this.refreshCounter,
      required this.incressCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      FloatingActionButton(
        backgroundColor: Colors.green,
        elevation: 30,
        onPressed: () => decreaseCounter(),
        child: const Icon(Icons.remove),
      ),
      FloatingActionButton(
          backgroundColor: Colors.green,
          elevation: 30,
          onPressed: () => refreshCounter(),
          child: const Icon(Icons.refresh)),
      FloatingActionButton(
        backgroundColor: Colors.green,
        elevation: 30,
        onPressed: () => incressCounter(),
        child: const Icon(Icons.add),
      ),
    ]);
  }
}
