import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: PageView(
        children: const [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
    ));
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  GlobalKey<FirstPageState> firstPageKey = GlobalKey<FirstPageState>();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Form(child: Text('First Page')));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Second Page'),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Third Page'),
    );
  }
}
