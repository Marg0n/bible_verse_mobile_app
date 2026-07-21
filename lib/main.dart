import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //? This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bible Verse',
      theme: ThemeData(
        //? This is the theme of application.
        colorScheme: .fromSeed(seedColor: Colors.brown.shade900),
      ),
      home: const MyHomePage(title: 'Bible Verse'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  //? This widget is the home page of application.

  //? Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //? This call to setState tells the Flutter framework that something has changed in this State,
      _counter++;
    });
  }

  void _decrementCenter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    //? This method is rerun every time setState is called, for instance as done by the _incrementCounter method above.

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        //? Center is a layout widget. It takes a single child and positions it in the middle of the parent.
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            heroTag: 'incrementBtn',
            child: const Icon(Icons.add),
          ),        
      );
    }
}
