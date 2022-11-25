// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore == 8 || resultScore == 9) {
      resultText = '¡Eres asombroso/a!';
      print(resultScore);
    } else if (resultScore >= 6 && resultScore <= 7) {
      resultText = '¡Bastante bien!';
      print(resultScore);
    } else if (resultScore >= 4 && resultScore <= 5) {
      resultText = '¡Tienes que trabajar mas!';
    } else if (resultScore >= 1 && resultScore <= 3) {
      resultText = '¡Tienes que trabajar duro!';
    } else {
      resultText = '¡Esta es una mala puntuación!';
      print(resultScore);
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Resultados: $resultScore/9 respuestas correctas',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          SeccionPregunta1(),
          SeccionPregunta2(),
          SeccionPregunta3(),
          SeccionPregunta4(),
          SeccionPregunta5(),
          SeccionPregunta6(),
          SeccionPregunta7(),
          SeccionPregunta8(),
          SeccionPregunta9(),
          TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'home');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 255, 1, 1),
              ),
              padding: const EdgeInsets.all(14),
              child: const Text(
                'TERMINAR QUIZ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta1 extends StatelessWidget {
  const SeccionPregunta1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 1',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Úlceras traumáticas y leucoedema',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Se refieren a un grupo de lesiones y afecciones caracterizadas por un aumento variable del riesgo de desarrollar cáncer de la cavidad oral. “Potencialmente maligno” implica que no todos los pacientes diagnosticados con alguna de estas anomalías desarrollarán un cáncer en la cavidad oral. Tampoco supone que surja un carcinoma justo en el sitio donde se diagnosticó previamente un desorden potencialmente maligno, En este sentido presentar un desorden potencialmente maligno es solo uno de varios factores que aumentan el riesgo de desarrollar cáncer;El riesgo varía según una variedad de factores relacionados con el paciente o la lesión.\nDentro de los desórdenes potencialmente malignos encontramos principalmente la leucoplasia, eritroplasia, liquen plano atrófico, liquen plano erosivo, queilitis actínica, lesiones del fumador entre otros.',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta2 extends StatelessWidget {
  const SeccionPregunta2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 2',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Carcinoma escamocelular',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'El cáncer es un término genérico que hace referencia a un conjunto amplio de enfermedades que pueden afectar cualquier parte del organismo, ya sean órganos o tejidos, cuyo común denominador es un crecimiento o multiplicación rápida de células anormales que se pueden extender más allá de sus límites pudiendo afectar estructuras adyacentes u otros órganos. El cáncer oral es una patología que se ha venido estudiando a lo largo de los años, se sabe que uno de los cánceres orales más conocidos es el carcinoma-escamocelular. (Referencia proyecto de nosotros)',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta3 extends StatelessWidget {
  const SeccionPregunta3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 3',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Eritroplasia',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Lesión de la mucosa oral que aparece en forma de placas rojas, aterciopeladas, de bordes irregulares, aunque bien definidos que no pueden ser caracterizados ni clínica ni histológicamente consecuente con ninguna otra enfermedad del complejo bucal.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20,
                //     vertical: 20,
                //   ),
                //   child: Image(
                //     image: AssetImage('assets/6.png'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta4 extends StatelessWidget {
  const SeccionPregunta4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 4',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Leucoplasia',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Placa anormal de tejido de color blanco que se forma en las membranas mucosas de la boca y otras partes del cuerpo. lesión predominantemente blanca de la mucosa oral que no puede caracterizarse como ninguna otra lesión conocida y con una elevada tendencia a convertirse en un cáncer oral. OMS',
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20,
                //     vertical: 20,
                //   ),
                //   child: Image(
                //     image: AssetImage('assets/pregunta4.jpg'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta5 extends StatelessWidget {
  const SeccionPregunta5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 5',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Liquen plano erosivo',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'El liquen plano erosivo es una enfermedad inflamatoria de la mucosa que actualmente se considera como un trastorno inmunitario, es una variante dolorosa que puede conducir a deterioro severo por dolor persistente. Permanece por años, las remisiones espontáneas son escasas, y los tratamientos insatisfactorios.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20,
                //     vertical: 20,
                //   ),
                //   child: Image(
                //     image: AssetImage('assets/8.png'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta6 extends StatelessWidget {
  const SeccionPregunta6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 6',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Liquen plano atrófico',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'El liquen plano erosivo es una enfermedad inflamatoria de la mucosa que actualmente se considera como un trastorno inmunitario,La variante atrófica se caracteriza por presentar zonas de solución de continuidad del epitelio de color rojo, que se localizan en la encía con mayor frecuencia, seguidas por la lengua, mucosa yugal, fondo de surco, mucosa labial y piso de boca.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20,
                //     vertical: 20,
                //   ),
                //   child: Image(
                //     image: AssetImage('assets/10.png'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta7 extends StatelessWidget {
  const SeccionPregunta7({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 7',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Queilitis Actinica',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'La queilitis actínica es un DPM del labio que ocurre como respuesta a una exposición prolongada a la radiación ultravioleta. Se evidencian alteraciones de la mucosa y semimucosa labial con mayor predominio en la superficie del labio inferior.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20,
                //     vertical: 20,
                //   ),
                //   child: Image(
                //     image: AssetImage('assets/13.png'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta8 extends StatelessWidget {
  const SeccionPregunta8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 8',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Paladar de fumador invertido',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Lesión blanca hiperqueratósica y acantósica propia de los grandes fumadores, y que se localiza en el paladar.Además de esta lesión se observan numerosas pápulas pequeñas rojas ligeramente umbilicadas y de superficie áspera. Las pápulas son los conductos de las glándulas salivales menores que presentan dilatación y metaplasia de su epitelio.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20,
                //     vertical: 20,
                //   ),
                //   child: Image(
                //     image: AssetImage('assets/12.png'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionPregunta9 extends StatelessWidget {
  const SeccionPregunta9({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'PREGUNTA 9',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Respuesta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'Carcinoma Escamocelular',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    'El carcinoma de células escamosas (CCE) representa el tumor más frecuente entre todos los cánceres de la cavidad oral, con una edad media de 60 años y una mayor incidencia en el sexo masculino. La característica clásica de la lesión es un nódulo endurecido, con signos y síntomas que difieren según la región bucal afectada, muchas de estas lesiones son indoloras.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20,
                //     vertical: 20,
                //   ),
                //   child: Image(
                //     image: AssetImage('assets/pregunta9.png'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
