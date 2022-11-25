import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final String questionImage;

  const Question(this.questionText, this.questionImage, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            questionText,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
            // textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Image(
            image: AssetImage(questionImage),
          ),
        ],
      ),
    );
  }
}
