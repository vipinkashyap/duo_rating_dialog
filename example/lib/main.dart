import 'dart:developer';

import 'package:duo_rating_dialog/duo_rating_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duo rating dialog'),
      ),
      body: const Center(child: Text('Demo Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return DuoRatingDialog(
                    title: const Text('How was your session?'),
                    submitButtonText: 'SUBMIT',
                    submitButtonTextStyle: const TextStyle(color: Colors.black),

                    ///ratingicon: const Icon(Icons.flutter_dash),
                    onSubmitted: (value) {
                      log('First rating: ${value.ratingOne.toString()}, Second rating: ${value.ratingTwo.toString()}');
                    });
              });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.preview),
      ),
    );
  }
}
