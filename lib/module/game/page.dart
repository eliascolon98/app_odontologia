// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:odontologia/module/game/quiz.dart';
import 'package:odontologia/module/game/results.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _questions = const [
    {
      'questionText':
          '1: ¿Cuáles de estos diagnosticos no pertenecen a los desórdenes potencialmente malignos?',
      'answers': [
        {'text': 'Leucoplasia y liquen plano', 'score': 0},
        {'text': 'Queilitis actinica y leucoplasia', 'score': 0},
        {'text': 'Úlceras traumáticas y leucoedema', 'score': 1},
        {'text': 'Lesiones del fumador y eritroplasia.', 'score': 0},
      ],
      'questionImage': 'assets/0.png',
    },
    {
      'questionText':
          '2: ¿Qué tipo de cáncer se encuentra con mayor frecuencia en cavidad oral?',
      'answers': [
        {'text': 'Melanoma', 'score': 0},
        {'text': 'Adenoma', 'score': 0},
        {'text': 'Linfoma', 'score': 0},
        {'text': 'Carcinoma escamocelular', 'score': 1},
      ],
      'questionImage': 'assets/0.png',
    },
    {
      'questionText':
          '3: Paciente masculino de 62 años de edad, campesino, con ausencia clínica de órganos dentarios inferiores, el cual presenta prótesis inferior desadaptada, relata consumo de alcohol diario y masticar tabaco 3 veces al día. Consulta por presentar, desde hace 5 meses, una placa roja de aspecto aterciopelado, en mucosa, asintomática, que no desaparece, de 3 centímetro de diámetro y coloración eritematosa.\n\nCon base en lo anterior, ¿Cuál cree usted que es el diagnostico presuntivo?',
      'answers': [
        {'text': 'Mucositis', 'score': 0},
        {'text': 'Lesiones vasculares', 'score': 0},
        {'text': 'Candidiasis eritematosa', 'score': 0},
        {'text': 'Eritroplasia', 'score': 1},
      ],
      'questionImage': 'assets/6.png',
    },
    {
      'questionText':
          '4: Paciente masculino de 40 años de edad, con presencia de caries y consumo de 15 cigarrillos diarios. Consulta por presentar, desde hace 3 meses, una lesión blanquecina en la cara ventral de la lengua, asintomática, ligeramente rugosa al tacto, hiperqueratósica, que no desaparece con el raspado, de un centímetro de diámetro y coloración blanquecina de la mucosa del suelo de la boca.\n\nCon base en lo anterior, ¿Cuál cree usted que es el diagnostico presuntivo?',
      'answers': [
        {'text': 'Leucoplasia', 'score': 1},
        {'text': 'Candidiasis', 'score': 0},
        {'text': 'Liquen plano', 'score': 0},
        {'text': 'Lesiones traumáticas', 'score': 0},
      ],
      'questionImage': 'assets/pregunta4.jpg',
    },
    {
      'questionText':
          '5: Paciente femenina de 52 años de edad, sin alergias medicamentosas, ni alimenticias conocidas, la cual relata encontrarse en situación de estrés. Asiste a  consulta por presentar múltiples lesiones erosivas y descamadas en encía vestibular tanto libre como adherida;a la exploración se aprecian múltiples lesiones erosivas, de color roja, dolorosas a la palpación, con presencia de zonas ulceradas en su superficie en la papila gingival entre órganos dentario  34, 35. La paciente refiere dichas lesiones desde hace 3 meses, a la palpación y exploración presenta 3  adenopatías palpables a nivel de las cadenas submaxilares, dolorosas, móviles y blandas a la palpación compatible con adenitis específica aguda.\n\nCon base en lo anterior, ¿Cuál cree usted que es el diagnostico presuntivo?',
      'answers': [
        {'text': 'Penfigoide benigno', 'score': 0},
        {'text': 'Gingivitis descamativa', 'score': 0},
        {'text': 'Pénfigo vulgar', 'score': 0},
        {'text': 'Liquen plano erosivo ', 'score': 1},
      ],
      'questionImage': 'assets/8.png',
    },
    {
      'questionText':
          '6: Paciente masculino de 45 años de edad, el cual acudió al servicio de estomatología y cirugía oral de la universidad de Cartagena, por presentar dolor leve en toda la boca, que no le permitía masticar los alimentos. Reportó un tiempo de evolución aproximadamente cinco meses. Los antecedentes familiares y personales no fueron relevantes para el caso y no se informó de alteraciones en órganos y sistemas. En el examen físico general no se observaron alteraciones en la piel, uñas o cuero cabelludo. En el examen intraoral paciente edéntulo en arcada superior y sin presencia de prótesis, se identificaron zonas atróficas localizadas en encía marginal y adherida y en mucosa yugal, con presencia de zonas ulceradas.\n\nCon base en lo anterior, ¿Cuál cree usted que es el diagnostico presuntivo?',
      'answers': [
        {'text': 'Eritroplasia', 'score': 0},
        {'text': 'Lupus eritematoso', 'score': 0},
        {'text': 'Pénfigo', 'score': 0},
        {'text': 'Liquen plano atrófico', 'score': 1},
      ],
      'questionImage': 'assets/10.png',
    },
    {
      'questionText':
          '7: Hombre de 56 años, vendedor de sombreros en la playa, no presenta enfermedades sistémicas, actualmente no toma medicamentos. Refiere no tomar bebidas alcohólicas, refiere haber fumado un paquete de cigarrillos diario durante 24 años, menciona que dejó de fumar hace 3 años. Al realizar el examen clínico se observó bermellón inferior con resequedad, fisuras, descamación y lado izquierdo de la línea media zona de pigmentación melánica levemente indurada alrededor, paciente menciona que a veces se le ulcera y que le ha ido creciendo e intensificado su coloración en los últimos meses, refiere no usar ningún tipo de protector labial con factor de protección solar (FPS) No se palparon adenopatías.\n\nCon base en lo anterior, ¿Cuál cree usted que es el diagnostico presuntivo?',
      'answers': [
        {'text': 'Queilitis Actinica', 'score': 1},
        {'text': 'Carcinoma escamo celular', 'score': 0},
        {'text': 'Verrugas víricas', 'score': 0},
        {'text': 'Lupus eritematosos discoide', 'score': 0},
      ],
      'questionImage': 'assets/13.png',
    },
    {
      'questionText':
          '8: Paciente masculino de 45 años de edad, con antecedentes familiares de cancer de mama por parte de su madre, No presenta contraindicaciones sistémicas. No toma medicamentos actualmente. Refiere no tomar bebidas alcohólicas, actualmente fuma 10 cigarrillos diario con modalidad invertida. Clínicamente se observa paladar de color blanquecino-grisáceo con un aspecto cuarteado y un punteado rojizo, asintomático, de 6 meses de evolución.\n\nCon base en lo anterior, ¿Cuál cree usted que es el diagnostico presuntivo?',
      'answers': [
        {'text': 'Carcinoma epidermoide', 'score': 0},
        {'text': 'Paladar de fumador invertido', 'score': 1},
        {'text': 'Melanoma', 'score': 0},
        {'text': 'Lesiones liquenoides', 'score': 0},
      ],
      'questionImage': 'assets/12.png',
    },
    {
      'questionText':
          '9: Paciente femenina de 70 años de edad que acude a consulta por presentar lesión tumoral en reborde alveolar inferior de 2 meses de evolución asintomático a la palpación, de consistencia cauchosa, de superficie rugosa y con zonas eritematosas en la superficie, de base cesil. A la anamnesis paciente refiere antecedente de fumadora crónica y exposición constante al sol referente a su antigua ocupación laboral.\n\nCon base en lo anterior, ¿Cuál cree usted que es el diagnostico presuntivo?',
      'answers': [
        {'text': 'Carcinoma Escamocelular', 'score': 1},
        {'text': 'Eritroplasia', 'score': 0},
        {'text': 'Torus mandibular', 'score': 0},
        {'text': 'Quiste osificante periférico', 'score': 0},
      ],
      'questionImage': 'assets/pregunta9.png',
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  bool showAnswer = false;
  int indexSelected = -1;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      indexSelected = 0;
    });
  }

  Future<void> _answerQuestion(int score, int indexSelected) async {
    _totalScore += score;
    showAnswer = true;
    this.indexSelected = indexSelected;

    setState(() {});

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      showAnswer = false;
      this.indexSelected = -1;
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lesiones potencialmente malignas.'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                    showAnswer: showAnswer,
                    indexSelected: indexSelected,
                  )
                : Result(_totalScore, _resetQuiz),
          ),
        ],
      ),
    );
  }
}
