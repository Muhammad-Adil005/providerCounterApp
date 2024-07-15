import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/counter_provider.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    print('second screen');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Consumer<Counter>(
          builder: (context, counter, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counter: ${counter.count}',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => counter.increment(),
                      child: Text("Increment"),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => counter.decrement(),
                      child: Text("Decrement"),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
