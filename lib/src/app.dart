import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/counter_provider.dart';
import 'package:flutter_provider/src/providers/user_provider.dart';
import 'package:flutter_provider/src/screens/home_page.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const HomePage(),
      ),
    );
  }
}
