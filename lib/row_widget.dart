import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row widget'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 200,
                margin: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/premium-photo/red-technology-images-background-copy-space_1179130-813927.jpg?w=900'),
                        fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                margin: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                margin: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
