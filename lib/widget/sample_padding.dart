import 'package:flutter/material.dart';

class SamplePadding extends StatelessWidget {
  const SamplePadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100),
      child: Text(
        'Seraga tinggal di palembang, daerah talang kepuh, dekat pemkot',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
