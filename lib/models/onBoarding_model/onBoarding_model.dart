import 'package:flutter/material.dart';

class BoardingModel extends StatelessWidget {
  final String image;
  final String title;
  final String bodytext;
  const BoardingModel({Key? key, required this.image, required this.title, required this.bodytext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset('assets/images/$image'),
            SizedBox(
              height: 20.0,
            ),
            Text(
              '$title',
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Some $bodytext',
            ),
          ],
        ),
      ),
    );
  }
}
