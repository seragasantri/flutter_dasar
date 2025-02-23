import 'package:flutter/material.dart';

class SampleImages extends StatelessWidget {
  const SampleImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Belajar Widget Image',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          //membuat gambar bentuk lingkaran
          Image.asset('assets/images/sample_images.jpg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/sample_images.jpg'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/sample_images.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/sample_images.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/sample_images.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          // Image.network('https://picsum.photos/200/150'), //dari internet
          // Container(
          //   margin: const EdgeInsets.all(10),
          //   height: 400,
          //   width: 400,
          //   decoration: BoxDecoration(border: Border.all()),
          //   child: Image.asset(
          //     'assets/images/sample_images.jpg', //dari local
          //     alignment: Alignment.centerRight,
          //     color: Colors.black,
          //     colorBlendMode: BlendMode.softLight,
          //     fit: BoxFit.fill,
          //     // repeat: ImageRepeat.repeatY,
          //   ),
          // ),
        ],
      ),
    );
  }
}
