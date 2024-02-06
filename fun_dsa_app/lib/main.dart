import 'package:flutter/material.dart';
import 'package:fun_dsa_app/algorithms/linear_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? centeredText;

  void linearSearch() {
    var listOfInt = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    var linearSearch = LinearSearch();
    centeredText = linearSearch.search(listOfInt, 5).toString();
    //centeredText = linearSearch.search(listOfInt, 50).toString();
  }

  onButtonPressed() {
    setState(() {
      linearSearch();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text('HomePage'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Wrap(
            runSpacing: 10,
            children: [
              Center(
                child: Text(
                  centeredText ?? '',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size.fromHeight(45),
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),
                onPressed: () => onButtonPressed(),
                child: const Text(
                  'Execute',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
