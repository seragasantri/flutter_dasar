import 'package:flutter/material.dart';

class SampleListview extends StatelessWidget {
  SampleListview({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'John Doe',
      'address': 'Jakarta',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=2',
      'name': 'Jane Doe',
      'address': 'Bandung',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=3',
      'name': 'Michael Smith',
      'address': 'Surabaya',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=4',
      'name': 'Emily Johnson',
      'address': 'Medan',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=5',
      'name': 'David Brown',
      'address': 'Yogyakarta',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=6',
      'name': 'Emma Wilson',
      'address': 'Bali',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=7',
      'name': 'Daniel Lee',
      'address': 'Semarang',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=8',
      'name': 'Sophia Martinez',
      'address': 'Makassar',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=9',
      'name': 'James Anderson',
      'address': 'Palembang',
    },
  ];

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
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(data[index]['photoUrl']),
            ),
            textColor: Colors.white,
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
            tileColor: Colors.purple[colorCodes[index]],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider(thickness: 2, color: Colors.grey);
        },
      ),
    );
  }
}
