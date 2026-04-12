import 'package:flutter/material.dart';
import 'package:learn_provider/provider/list_provider.dart';
import 'package:learn_provider/widgets/common_appbar.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('AYush BUild');
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'List Screen',
        centreTitle: true,
        color: Colors.amber,
      ),
      body: Consumer<ListProvider>(
        builder: (ctx, provider, _) {
          var getData = provider.getlist();
          return getData.isNotEmpty
              ? ListView.builder(
                  itemCount: getData.length,
                  itemBuilder: (cont, value) {
                    return ListTile(
                      
                      title: Text('${getData[value]['banana']}'),
                      subtitle: Text('${getData[value]['apple']}'),
                    );
                  },
                )
              : Center(child: Text('No Data'));
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          context.read<ListProvider>().addinlist({
            'apple': 'fruit',
            'banana': 'yellowfruit',
          });
        },
      ),
    );
  }
}
