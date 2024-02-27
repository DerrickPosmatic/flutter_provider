import 'package:flutter/material.dart';
import 'package:flutter_provider/src/app.dart';

void main() {
  runApp(const App());
}


// When to access Provider instance you can use
//  1. Provier.of<MyProvider>(context).myMethod or just value .value
//  2. context.read<MyProvider>().myMethod to trigger the method
//  3. context.watch<MyProvider>().value to 
