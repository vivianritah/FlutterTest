import 'package:flutter/material.dart';

class SimpleListTile extends StatelessWidget {
  const SimpleListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile')),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Icon(Icons.person),
            title: Text('Wembabazi Vivian Ritah'),
            subtitle: Text('Developer'),
            trailing: Icon(Icons.notifications),
          );
        },
      ),
    );
  }
}
