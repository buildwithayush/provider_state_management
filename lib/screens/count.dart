import 'package:flutter/material.dart';
import 'package:learn_provider/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    final countProvider = Provider.of<CountProvider>(context , listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Count Example'),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          
          builder: (context, value, child) {
            debugPrint('Only This Widget Rebuilds');
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
