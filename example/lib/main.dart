import 'package:dglk_simple_button/dglk_simple_button.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SimpleButton(
                title: 'Simple',
                callback: () {},
              ),
              const SizedBox(height: 4),
              const SimpleButton(
                title: 'Simple Disabled',
              ),
              const SizedBox(height: 12),
              SimpleButton(
                title: 'Progress',
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
                callback: () {},
              ),
              const SizedBox(height: 4),
              const SimpleButton(
                title: 'Progress Disabled',
                child: CircularProgressIndicator(),
              ),
              const SizedBox(height: 12),
              SimpleButton(
                title: 'Transparent',
                callback: () {},
                textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.black,
                    ),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(height: 4),
              SimpleButton(
                title: 'Transparent Disabled',
                backgroundColor: Colors.transparent,
                textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 12),
              SimpleButton(
                title: 'Green button',
                callback: () {},
                backgroundColor: Colors.lightGreen,
              ),
              const SizedBox(height: 4),
              const SimpleButton(
                title: 'Green button disabled',
                backgroundColor: Colors.lightGreen,
              ),
              const SizedBox(height: 12),
              SimpleButton(
                title: 'With Shadow',
                callback: () {},
                withShadow: true,
              ),
              const SizedBox(height: 4),
              const SimpleButton(
                title: 'With Shadow Disabled',
                withShadow: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
