import 'package:flutter/material.dart';
import 'package:learn_provider/provider/favorite_provider.dart';
import 'package:provider/provider.dart';


class FavoriteItems extends StatefulWidget {
  const FavoriteItems({super.key});

  @override
  State<FavoriteItems> createState() => _FavoriteItemsState();
}

class _FavoriteItemsState extends State<FavoriteItems> {
 
  @override
  Widget build(BuildContext context) {
    debugPrint('Build');
    final provider = Provider.of<FavoriteItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Favorite Items') ,
      ),
      body: Center(
              child: ListView.builder(
                itemCount:provider.selectedItem.length ,
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
    );
    }}