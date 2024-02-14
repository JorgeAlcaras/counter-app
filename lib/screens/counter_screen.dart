import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Counter', style: TextStyle(color: Colors.white)),
          elevation: 10,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Clicks', style: TextStyle(color: Colors.black, fontSize: 30)),
            Text('0', style: TextStyle(color: Colors.blue, fontSize: 50)),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling, //
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Clicked ${i++} times');
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
          elevation: 30,
        ));
  }
}
