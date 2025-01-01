// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:example/bento_box_library/bento_box.dart';
import 'package:example/bento_box_library/bento_box_with_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BentoBox Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BentoBox Widget Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // BentoBox with text content
              BentoBox(
                height: 100,
                width: 200,
                title: "Hello",
                subtitle: "This is a BentoBox",
              ),
              const SizedBox(height: 16),
              // BentoBoxWithImage displaying a network image
              BentoBoxWithImage(
                height: 150,
                width: 150,
                profilePictureUrl: 'https://via.placeholder.com/150',
              ),
              const SizedBox(height: 16),
              // Another BentoBox to test layout
              BentoBox(
                height: 80,
                width: 180,
                title: "Title",
                subtitle: "Subtitle Example",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
