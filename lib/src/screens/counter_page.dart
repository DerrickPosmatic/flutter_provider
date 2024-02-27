import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) {
            return Text(
              counterProvider.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: 'increment',
              onPressed: () {
                // context.read<CounterProvider>().incrementCounter();
                Provider.of<CounterProvider>(context, listen: false)
                    .incrementCounter();
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: 'decrement',
              onPressed: () {
                context.read<CounterProvider>().decrementCounter();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
