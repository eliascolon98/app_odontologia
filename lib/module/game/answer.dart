import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final bool isCorrect;
  final bool showAnswer;
  final int index;
  final int indexSelected;

  const Answer(
    this.selectHandler,
    this.answerText, {
    super.key,
    required this.isCorrect,
    required this.showAnswer,
    required this.index,
    required this.indexSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            (isCorrect && showAnswer)
                ? Colors.green
                : (indexSelected == index && showAnswer)
                    ? Colors.red
                    : const Color.fromARGB(255, 1, 1, 101),
          ),
        ),
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
