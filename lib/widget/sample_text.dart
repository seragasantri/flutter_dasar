import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  const SampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belajar Widget Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(border: Border.all()),
            margin: const EdgeInsets.all(29),
            child: Text(
              'Mari Belajar Text Widget bersama saya seraga santri, lokasi saya ada di palembang',
            ),
          ),
          Container(
            height: 200,
            width: 300,
            margin: const EdgeInsets.all(29),
            child: Text(
              '''Mari Belajar Text Widget bersama saya seraga santri, lokasi saya ada di palembang''',
              textAlign: TextAlign.end,
              overflow: TextOverflow.clip,
              textScaleFactor: 1,
              style: TextStyle(
                color: Colors.amber[400],
                fontSize: 20,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue[400],
                decorationStyle: TextDecorationStyle.wavy,
                letterSpacing: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
