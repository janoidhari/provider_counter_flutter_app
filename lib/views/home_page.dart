import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/providers/counter_providers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Provider App"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${Provider.of<CounterProvider>(context).obj.c}',
              style: const TextStyle(fontSize: 80),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterProvider>(context,listen: false).incrementCounter();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterProvider>(context,listen: false).decrementCounter();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
