import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Program Counter';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // Increment counter by 1
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    // Decrement counter by 1
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: buildDrawer(context),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Handle conditions when counter number is odd or/and even
            _counter % 2 == 0
                ? const Text(
                    "GENAP",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )
                : const Text(
                    "GANJIL",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Visibility(
            // Decrement button will be invisible when counter is less or equals 0
            visible: _counter <= 0 ? false : true,
            child: FloatingActionButton(
              // Decrement button
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          FloatingActionButton(
            // Increament button
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ]),
      ),
    );
  }
}
