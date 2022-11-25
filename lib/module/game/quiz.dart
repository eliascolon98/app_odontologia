import 'package:flutter/material.dart';
import 'package:odontologia/module/game/answer.dart';
import 'package:odontologia/module/game/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final int indexSelected;
  final Function answerQuestion;
  final bool showAnswer;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
    required this.indexSelected,
    required this.showAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final map =
        (questions[questionIndex]['answers'] as List<Map<String, Object>>);

    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
          questions[questionIndex]['questionImage'].toString(),
        ),
        ...map.map((answer) {
          final index = map.indexWhere((m) => m == answer);
          return Answer(
            () => answerQuestion(answer['score'], index),
            isCorrect: answer['score'] == 1,
            answer['text'].toString(),
            showAnswer: showAnswer,
            index: index,
            indexSelected: indexSelected,
          );
        }).toList()
      ],
    );
  }
}
