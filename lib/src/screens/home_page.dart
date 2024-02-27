import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/counter_provider.dart';
import 'package:flutter_provider/src/providers/user_provider.dart';
import 'package:flutter_provider/src/screens/counter_page.dart';
import 'package:flutter_provider/src/screens/settings_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // Rebuild upon value change method #1
              Provider.of<UserProvider>(context).userName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              // Rebuild upon value change method #2
              context.watch<CounterProvider>().value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // you can also wrap the Text widget with Consumer<CounterProvider> to isolate the rebuild section
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.numbers),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CounterPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
