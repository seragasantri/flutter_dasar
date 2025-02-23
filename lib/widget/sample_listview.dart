import 'package:flutter/material.dart';

class SampleListview extends StatelessWidget {
  SampleListview({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belajar Widget Listview',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: 130,
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purple[colorCodes[index]],
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/300?img=$index',
                ),
              ),
            );
          },
          itemCount: colorCodes.length,
        ),
      ),
    );
  }
}
