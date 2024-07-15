// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_counter_app/provider/counter_provider.dart';
//
// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Counter counter = Provider.of<Counter>(context);
//     print('first screen');
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("First Screen"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Counter: ${counter.count}',
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => counter.increment(),
//                   child: Text("Increment"),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => counter.decrement(),
//                   child: Text("Decrement"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// With Consumer

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/counter_provider.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('first screen');
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(
              builder: (context, counter, _) {
                return Text(
                  'Counter: ${counter.count}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Provider.of<Counter>(context, listen: false).increment(),
                  child: Text("Increment"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => Provider.of<Counter>(context, listen: false).decrement(),
                  child: Text("Decrement"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
