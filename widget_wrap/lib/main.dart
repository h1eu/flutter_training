import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WrapWidgetExample(),
    );
  }
}

class WrapWidgetExample extends StatelessWidget {
  const WrapWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Wrap"),
      ),
      body: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        // runAlignment: WrapAlignment.center,
        // crossAxisAlignment: WrapCrossAlignment.end,
        runSpacing: 30,
        spacing: 10,
        children: const [
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 100,
      height: 100,
      color: Colors.blue,
    );
  }
}
