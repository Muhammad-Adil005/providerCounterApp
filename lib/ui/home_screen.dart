// Without used of Consumer

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Counter counter = Provider.of<Counter>(context);
//     print('home screen');
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Home Screen"),
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
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FirstScreen()),
//                 );
//               },
//               child: Text("Go to First Screen"),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SecondScreen()),
//                 );
//               },
//               child: Text("Go to Second Screen"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//With Consumer

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/counter_provider.dart';
import 'package:provider_counter_app/ui/second_screen.dart';

import 'first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('home screen');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
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
                  onPressed: () =>
                      Provider.of<Counter>(context, listen: false).increment(),
                  child: Text("Increment"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () =>
                      Provider.of<Counter>(context, listen: false).decrement(),
                  child: Text("Decrement"),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstScreen()),
                );
              },
              child: Text("Go to First Screen"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text("Go to Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
