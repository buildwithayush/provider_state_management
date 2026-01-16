import 'package:flutter/material.dart';
import 'package:learn_provider/provider/slider_example_provider.dart';
import 'package:provider/provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
   // final provider = Provider.of<SliderExampleProvider>(context ,listen: false);
    debugPrint('Build');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text('Slider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderExampleProvider>(
              builder: (context, value, child) {
                return Slider(
                  min: 0,
                  max: 1,
                  value: value.value,
                  onChanged: (newValue) {
                    
                    context.read<SliderExampleProvider>().setValue(newValue);
                  },
                );
              },
            ),
            Consumer<SliderExampleProvider>(
              builder: (context, value, child) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.amber.withValues(alpha: value.value),
                        ),
                        child: const Center(child: Text('Container 1')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: value.value),
                        ),
                        child: const Center(child: Text('Container 2')),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}



//  Example With SetState 


// import 'package:flutter/material.dart';

// class SliderExample extends StatefulWidget {
//   const SliderExample({super.key});

//   @override
//   State<SliderExample> createState() => _SliderExampleState();
// }

// class _SliderExampleState extends State<SliderExample> {
//   double value = 1.0;
//   @override
//   Widget build(BuildContext context) {
//     debugPrint('Build');
//     return Scaffold(
//       appBar: AppBar(title: Text('Slider Example')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Slider(
//               min: 0,
//               max: 1,
//               value: value,
//               onChanged: (newValue) {
//                 debugPrint(newValue.toString());
//                 setState(() {
//                   value = newValue;
//                 });
//               },
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     decoration: BoxDecoration(
//                       color: Colors.amber.withValues(alpha: value),
//                     ),
//                     child: const Center(child: Text('Container 1')),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     decoration: BoxDecoration(
//                       color: Colors.green.withValues(alpha: value),
//                     ),
//                     child: const Center(child: Text('Container 2')),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

