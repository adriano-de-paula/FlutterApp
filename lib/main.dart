import 'package:flutter/material.dart';

import 'components.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

      drawer: Drawer(
       child: SafeArea(
         child: ListView(
           padding: EdgeInsets.zero,
           children: [
             DrawerHeader(
               decoration: BoxDecoration(
                 color: Theme.of(context).colorScheme.primaryContainer,
               ),
               child: Align(
                 alignment: Alignment.bottomLeft,
                 child: Text(
                   'Menu',
                   style: Theme.of(context).textTheme.headlineSmall,
                 ),
               ),
             ),
             ListTile(
               leading: const Icon(Icons.pages),
               title: const Text('Componentes'),
               onTap: () {
                 Navigator.pop(context); // fecha o drawer
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (_) => const ComponentsPage()),
                 );
               },
             ),
           ],
         ),
       ),
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            TextButton(onPressed: _incrementCounter, child: Text('Increment')),
            TextButton(onPressed: _decrementCounter, child: Text('Decrement')),
          ],
        ),
      ),
    );
  }
}
