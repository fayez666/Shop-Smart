import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home Screen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          ElevatedButton(onPressed: () {}, child: const Text('Hello Wworld')),
          SwitchListTile(
            value: false,
            onChanged: (value) {},
            title: const Text('Switch Theme'),
          ),
        ],
      ),
    );
  }
}
