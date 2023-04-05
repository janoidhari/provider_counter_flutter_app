import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/providers/counter_providers.dart';
import 'package:provider_counter_app/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create:(context)=>CounterProvider() ,
      builder: (context,_)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
