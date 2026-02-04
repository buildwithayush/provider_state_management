import 'package:flutter/material.dart';
import 'package:learn_provider/provider/favorite_provider.dart';

import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    //  final favoriteProvider = Provider.of<FavoriteItemProvider>(context);
    debugPrint('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite App'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Consumer<FavoriteItemProvider>(
                    builder: (context, value, child) {
                      debugPrint('build $index');
                      return ListTile(
                        onTap: () {
                          if (value.selectedItem.contains(index)) {
                            value.removeItem(index);
                          } else {
                            value.addItem(index);
                          }
                        },
                        title: Text('Movies $index'),
                        trailing: Icon(
                          value.selectedItem.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class FavoriteScreen extends StatefulWidget {
//   const FavoriteScreen({super.key});

//   @override
//   State<FavoriteScreen> createState() => _FavoriteScreenState();
// }

// class _FavoriteScreenState extends State<FavoriteScreen> {
//   List<int> selectedIndex = [];

//   @override
//   Widget build(BuildContext context) {
//     debugPrint('Build');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorite App'),
//         centerTitle: true,
//         backgroundColor: Colors.amber,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: ListView.builder(
//                 itemCount: 70,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     onTap: () {
//                       if (selectedIndex.contains(index)) {
//                         selectedIndex.remove(index);
//                       }else{
//                       selectedIndex.add(index);
//                       }
//                       setState(() {});
//                     },
//                     title: Text('Movies $index'),
//                     trailing: Icon(
//                       selectedIndex.contains(index)
//                           ? Icons.favorite
//                           : Icons.favorite_border_outlined,
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
