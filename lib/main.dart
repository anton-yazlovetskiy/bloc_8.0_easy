import 'package:flutter/material.dart';
import 'package:flutter_bloc_lib/pages/bloc_page.dart';
import 'package:flutter_bloc_lib/pages/cubit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/cubit': (context) => const CubitPage(),
        '/bloc': (context) => const BlocPage(),
      },
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('Cubit'),
          onPressed: () {
            Navigator.pushNamed(context, '/cubit');
          },
        ),
        const SizedBox(height: 50.0),
        ElevatedButton(
          child: const Text('Bloc'),
          onPressed: () {
            Navigator.pushNamed(context, '/bloc');
          },
        ),
      ],
    );
  }
}
