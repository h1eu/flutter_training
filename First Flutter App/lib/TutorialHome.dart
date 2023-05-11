import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
        ),
        title: const Text(
          "Example Title"
        ),
        actions: const [
          IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: null,
          )
        ],
      ),
      body: const Center(
        child: Text(
          "Hello, world"
        ),
      ),
      floatingActionButton: const FloatingActionButton(
          tooltip: "Add",
          onPressed: null,
          child: Icon(Icons.add),
      ),
    );
  }
}