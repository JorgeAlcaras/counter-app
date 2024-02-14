import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int i = 0;
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
          Text('$i', style: const TextStyle(color: Colors.blue, fontSize: 50)),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        FloatingActionButton(
          backgroundColor: Colors.green,
          elevation: 30,
          onPressed: () {
            //print('Clicked ${i++} times');
            i--;
            setState(() {});
          },
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
            backgroundColor: Colors.green,
            elevation: 30,
            onPressed: () {
              //print('Clicked ${i++} times');
              i = 0;
              setState(() {});
            },
            child: const Icon(Icons.refresh)),
        FloatingActionButton(
          backgroundColor: Colors.green,
          elevation: 30,
          onPressed: () {
            //print('Clicked ${i++} times');
            i++;
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ]),
    );
  }
}
