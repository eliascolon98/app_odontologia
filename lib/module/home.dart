import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
        children: [
          const ContainerBackground(),
          ListView.builder(
            itemCount: 100,
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            itemBuilder: (context, index) {
              if (index != 0) return SizedBox.shrink();

              return const Content();
            },
          ),
          const _TitleBar(),
        ],
      ),
    );
  }
}

class _TitleBar extends StatelessWidget {
  const _TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        height: 55,
        child: const Center(
          child: Text(
            'DPM',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 50),
      child: Column(
        children: const [
          SizedBox(height: 10),
          SeccionOne(),
          SeccionTwo(),
          SeccionThree(),
          SeccionFour(),
          SecctionFive(),
          SeccionEight(),
          SeccionSix(),
          SeccionSeven(),
          SizedBox(height: 10),
          Game()
        ],
      ),
    );
  }
}

class Game extends StatelessWidget {
  const Game({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(255, 1, 1, 101),
        ),
        width: MediaQuery.of(context).size.width * 0.6,
        height: 50,
        child: const Center(
          child: Text(
            'Quiz',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.popAndPushNamed(context, 'game');
      },
    );
  }
}

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Color.fromARGB(255, 1, 1, 101),
      ),
    );
  }
}

class SeccionOne extends StatelessWidget {
  const SeccionOne({
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
          'Desórdenes potencialmente malignos (DPM)',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
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
                    vertical: 5,
                  ),
                  child: Text(
                    'Cualquier anormalidad de la mucosa que está asociada con un riesgo estadísticamente aumentado de desarrollar cáncer oral” (Warnakulasuriya, 2021)  (1) sin embargo, no  todas las lesiones orales  se transforman  en cáncer oral y algunos cánceres orales se desarrollan a partir de lesiones que no han tenido displasia ( Speight, 2007 )(2).\n \nDentro de los desórdenes potencialmente malignos encontramos principalmente la leucoplasia, eritroplasia, liquen plano atrófico, liquen plano erosivo, queilitis actínica, lesiones del fumador entre otros.',
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
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Epidemiologia',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    'Datos epidemiológicos han evidenciado que el 4,47% de la población mundial puede tener OPMD. ( Mello et al., 2018 )(2).\n \nMúltiples estudios han calculado que la prevalencia de los OPMD varía entre las poblaciones y se asocia principalmente a los hábitos, como el consumo de tabaco, alcohol; por lo que los hombres suelen ser más afectados que las mujeres, debido a la prevalencia de estos hábitos. (2)',
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

class SeccionTwo extends StatelessWidget {
  const SeccionTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        collapsedTextColor: Colors.red,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: Text(
          'Leucoplasia',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text:
                          'Definido por la Organización Mundial de la Salud (OMS) como “una mancha o placa blanca que no se puede caracterizar clínica o patológicamente como cualquier otra enfermedad”. ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'https://doi.org/10.11144/Javeriana.uo37-78.ecdp',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://doi.org/10.11144/Javeriana.uo37-78.ecdp'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                        const TextSpan(
                          text:
                              '  Es un término estrictamente clínico. Su incidencia oscila entre el 0,2 % y el 17 % de la población. (3).\n',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Clasificación',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: const [
                      ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            Color.fromARGB(255, 1, 1, 101),
                        title: Text(
                          'Homogenea',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'Placa, de color blanco uniforme, son uniformemente planas y delgadas, tienen una superficie lisa y pueden presentar grietas poco profundas, asintomática.\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/1.png'),
                          ),
                          Text(
                            'Imagen tomada de Hernández-Pérez, Francisco, and Samantha Rivera-Macías (2019).(4)\n',
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            Color.fromARGB(255, 1, 1, 101),
                        title: Text(
                          'No Homogenea',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          ExpansionTile(
                            collapsedIconColor: Colors.white,
                            collapsedTextColor: Colors.cyan,
                            collapsedBackgroundColor:
                                Color.fromARGB(255, 1, 1, 101),
                            title: Text(
                              'Moteado',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: [
                              Text(
                                'Mixto, de color blanco y rojo  (eritroleucoplasia ), pero conservando predominantemente la coloración blanca, margenes irregulares.\n',
                                textAlign: TextAlign.justify,
                              ),
                              Image(
                                image: AssetImage('assets/2.png'),
                              ),
                              Text(
                                'Imagen tomada de van der Waal (2015) .(5)\n',
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          SizedBox(height: 10),
                          ExpansionTile(
                            collapsedIconColor: Colors.white,
                            collapsedTextColor: Colors.cyan,
                            collapsedBackgroundColor:
                                Color.fromARGB(255, 1, 1, 101),
                            title: Text(
                              'Nodulares',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: [
                              Text(
                                'Pequeños crecimientos polipoides, redondeadas, rojas o blancas.\n',
                              ),
                              Image(
                                image: AssetImage('assets/3.png'),
                              ),
                              Text(
                                'Imagen tomada de Imagen tomada de van der Waal (2015).(5)\n',
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          SizedBox(height: 10),
                          ExpansionTile(
                            collapsedIconColor: Colors.white,
                            collapsedTextColor: Colors.cyan,
                            collapsedBackgroundColor:
                                Color.fromARGB(255, 1, 1, 101),
                            title: Text(
                              'Verrugoso o exofítico',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: [
                              Text(
                                'Superficie elevada, exofítica, corrugada.\n',
                              ),
                              Image(
                                image: AssetImage('assets/4.png'),
                              ),
                              Text(
                                'Imagen tomada de Imagen tomada de van der Waal (2015). (5)\n',
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Epidemiología',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text(
                    '- Hombres \n\n - Edad adulta \n\n - Habitos como: \n\n    1. Consumo de tabaco y/o alcohol \n\n    2. Nuez betel (asiaticos). (6)',
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Mayor riesgo de transformación maligna',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Text(
                    '- Mujeres \n\n - Edad adulta \n\n - Tipo no homogeneo \n\n - Lesion mayor a 2 cm \n\n - Displasia epitelial (7)',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Para tener en cuenta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    'La leucoplasia es un término estrictamente clínico, por lo que el primer paso es llegar a un diagnóstico definitivo histopatológico. \n\n La biopsia es mandatoria para guiar el curso de tratamiento.',
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

class SeccionThree extends StatelessWidget {
  const SeccionThree({
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
          'Leucoplasia verrugosa proliferativa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Es un tipo de leucoplasia oral, rara, que se caracteriza fundamentalmente por ser multifocal, recidivante y malignizarse en un porcentaje alto.\n\n Se presenta clínicamente como una placa blanca que no se desprende al raspado, de crecimiento lento, que con el tiempo se vuelve verrugosa y exofítica, pudiendo tener áreas eritematosas y llegando a comprometer diversas partes de la cavidad bucal. (8)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      Image.asset('assets/5.png'),
                      const Text(
                        'Imagen tomada de Ramos‐García, Pablo (2021). (9)',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Epidemiologia',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    '- Más frecuente en mujeres de edad avanzada (66 años).(9)\n\n',
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
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Localicación',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Encia: (39.9%)\nMucosa bucal (23,8%)\nLengua (14,4%)\nPaladar (11,3%)\nPiso de boca (5,1%).(9)\n\n',
                        textAlign: TextAlign.justify,
                      ),
                    ],
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
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Riesgo de trasnformación maligna',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Riesgo de transformación maligna: 49,5%. (9)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                    ],
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

class SeccionFour extends StatelessWidget {
  const SeccionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'Eritroplasia',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Placa de color rojo intenso que no se puede caracterizar clínica ni patológicamente como ninguna otra enfermedad definible.\n\nClínicamente se presenta como una placa eritematosa de superficie lisa, aterciopelada o granular,  bien delimitada, con una textura suave.(3)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      Image.asset('assets/6.png'),
                      const Text('Imagen propia')
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Localización',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    '- Piso de la boca\n- Paladar blando\n- Mucosa yugal\n- La cara ventral de lengua\n- Las amígdalas(3)\n',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Sintomatología',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    '- Malestar, sensación de hormigueo\n- Sensibilidad a alimentos calientes o picantes.(1)\n',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Etiología',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    '- Asociada al tabaco y al alcohol.\n- Exposición a agentes carcinógenos.\n- Infecciones virales\n- Dieta baja en antioxidantes\n- Factores genéticos (6)',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Epidemiología',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    '- El 0,2 % y el 0,83 % de la población.\n- Predominio por el sexo masculino.\n- Entre la cuarta y sexta décadas de la vida. (6)\n',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Riesgo de transformación maligna',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    'Oscila entre un 14 % y un 50 %.(3)\n',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: const ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: Color.fromARGB(255, 1, 1, 101),
              title: Text(
                'Para tener en cuenta',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    'Dado el alto riesgo de evolución a carcinoma se debe hacer biopsia. cerca del 90% de los casos son diagnosticados como displasia epitelial moderada o severa.',
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

class SecctionFive extends StatelessWidget {
  const SecctionFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'Liquen plano ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
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
                    vertical: 5,
                  ),
                  child: Text(
                    'Es una enfermedad mucocutánea crónica, de carácter inflamatorio,recurrente.\n\nClínicamente\n\n- Presenta varias manifestaciones clínicas que se clasifican como típico (reticular) y atípico (forma atrófica, en placa, erosiva, bullosa y mixta).\n\n- Durante la exploración, hay que tener en cuenta para su diferenciación clínica el tipo de lesión, la localización, su bilateralidad y simetría.(3)\n',
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
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Clasificación',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      const ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            Color.fromARGB(255, 1, 1, 101),
                        title: Text(
                          'Forma reticular',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'Constituye la forma de presentación más frecuente. Son líneas blanquecinas ligeramente elevadas (“estrías de Wickham”), que no se desprenden con el raspado, dispuestas de forma arboriforme o de red, dejando en su interior áreas de mucosa normal o eritematosa. La localización preferencial es la mucosa yugal en el tercio posterior. Suelen ser bilaterales y simétricas.(3)\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/7.png'),
                          ),
                          Text('Imagen propia')
                        ],
                      ),
                      const ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            Color.fromARGB(255, 1, 1, 101),
                        title: Text(
                          'Forma erosiva',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'Liquen erosivo: se observan áreas erosivas, únicas o múltiples, por la pérdida de soluciones de continuidad en el epitelio. Son de color rojo intenso y con mucha frecuencia presentan formas reticulares en la periferia, se ubican especialmente en la mucosa yugal y la lengua. Cursa con dolor. Cuando el liquen plano oral erosivo se localiza solamente en la encía constituye una de las causas de la “gingivitis descamativa crónica.(10)\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/8.png'),
                          ),
                          Text('Imagen propia'),
                          SizedBox(height: 10),
                        ],
                      ),
                      const ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            Color.fromARGB(255, 1, 1, 101),
                        title: Text(
                          'Forma atrófica',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'Se presenta como una zona eritematosa debida al adelgazamiento del epitelio que transparenta los pequeños vasos sanguíneos de las zonas inflamadas. Se localiza preferencialmente en la lengua como zonas depapiladas, no induradas.(6)\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/10.png'),
                          ),
                          Text('Imagen propia')
                        ],
                      ),
                      ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            const Color.fromARGB(255, 1, 1, 101),
                        title: const Text(
                          'Mapa conceptual',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Column(
                            children: [
                              InkWell(
                                child: const Hero(
                                  tag: 'hero-rectangle',
                                  child: Image(
                                    image: AssetImage(
                                      'assets/liquen-plano-mapa-conceptual.png',
                                    ),
                                  ),
                                ),
                                onTap: () => zoomImage(context),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
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
                'Etiología',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    'Es desconocida pero se atribuye a factores inmunológicos, sin descartar factores agravantes como genéticos, infecciosos, neurológicos y psicológicos.(3)\n',
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
                'Epidemiología',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    '- Incidencia del 2 % en la población general.\n\n- Es más frecuente en mujeres (60-70 %)\n\n- Con un pico de prevalencia entre los 50 y 55 años Aunque aparece con mayor frecuencia en la mediana edad, también puede desarrollarse en niños y jóvenes.(3)\n',
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
                'Riesgo de transformación maligna',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Text(
                    'El riesgo de transformación maligna reportado es de 1,4%. (3)\n\n',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Future<void> zoomImage(context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: SizedBox(
            width: double.infinity,
            height: 400,
            child: InteractiveViewer(
              child: const Hero(
                tag: 'hero-rectangle',
                child: Image(
                  image: AssetImage('assets/liquen-plano-mapa-conceptual.png'),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class SeccionSix extends StatelessWidget {
  const SeccionSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'Queilitis Actínica',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'La queilitis actínica es un desorden potencialmente maligno del labio que ocurre como respuesta a una exposición prolongada a la radiación ultravioleta. Se evidencian alteraciones de la mucosa y semimucosa labial con mayor predominio en la superficie del labio inferior.(14)',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10),
                    ],
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
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Caracteristicas clinicas:',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Clínicamente se evidencian áreas secas, fisuradas y con escamas sobre la semimucosa labial inferior, debido a que el labio está más expuesto a la radiación ultravioleta y su epitelio es más delgado pues posee una fina capa de queratina con menor cantidad de melanina. (15)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Algunas veces están acompañados de ampollas características de quemadura en su forma aguda. El labio se observa hipotónico, con descamación de la semimucosa labial y xerosis. Pueden encontrarse áreas atróficas, leucoplásicas, erosiones y costras, con periodos de mejoramiento y recidiva. Puede también presentar dolor y sangrado. Un aspecto relevante es la pérdida del borde bermellón, es decir, no hay una clara separación entre la semimucosa labial y la piel. (16)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(height: 10),
                      const SizedBox(height: 10),
                      Image.asset('assets/13.png'),
                      const Text('Imagen propia'),
                    ],
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
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Epidemiología',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: const [
                      Text(
                        '- Se presenta con mayor frecuencia en pacientes del sexo masculino, de tez blanca, que superan la cuarta década de la vida.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- Entre la población de riesgo se ubica, quienes trabajan al aire libre y han estado crónicamente expuestos a la radiación ultravioleta.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- (Es importante establecer aquellos factores que causan irritación de forma directa y crónica como el hábito de fumar, traumatismos a repetición y quemaduras.',
                        textAlign: TextAlign.justify,
                      ),
                    ],
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
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Riesgo de transformación maligna',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'Tiene potencial de malignizarse a carcinoma escamocelular entre 1 % y 3 % de los casos en la cavidad bucal y es una de las principales causas de cáncer de labio.',
                        textAlign: TextAlign.justify,
                      ),
                    ],
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

class SeccionSeven extends StatelessWidget {
  const SeccionSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'Bilbiografía',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '(1) (Warnakulasuriya, Saman, et al. "Oral potentially malignant disorders: A consensus report from an international seminar on nomenclature and classification, convened by the WHO Collaborating Centre for Oral Cancer." Oral diseases 27.8 (2021): 1862-1880.)\n\n(2) Kumari, Pratima, Priyanka Debta, and Anshuman Dixit. "Oral Potentially Malignant Disorders: Etiology, Pathogenesis, and Transformation Into Oral Cancer." Frontiers in Pharmacology 13 (2022): 825266-825266.\n\n(3) Tovío Martínez, Eilien Gisek, et al. "Expresiones clínicas de los desórdenes potencialmente malignos en cavidad oral. Revisión integrativa de la literatura." Universitas Odontológica 37.78 (2018).\n\n(4) Hernández-Pérez, Francisco, and Samantha Rivera-Macías. "Leucoplasia homogénea de cavidad bucal." Oral 20.63 (2019): 1723-1726.\n\n(5) Van der Waal, Isaäc. "Oral leukoplakia, the ongoing discussion on definition and terminology." Medicina oral, patologia oral y cirugia bucal 20.6 (2015): e685.\n\n(6) Warnakulasuriya, Saman. "Clinical features and presentation of oral potentially malignant disorders." Oral surgery, oral medicine, oral pathology and oral radiology 125.6 (2018): 582-590.\n\n(7) Aguirre‐Urizar, José M., Irene Lafuente‐Ibáñez de Mendoza, and Saman Warnakulasuriya. "Malignant transformation of oral leukoplakia: Systematic review and meta‐analysis of the last 5 years." Oral Diseases 27.8 (2021): 1881-1895. https://doi.org/10.1111/odi.13810\n\n(8) Caffarena, Myriam Pérez, et al. "Leucoplasia verrugosa proliferativa". Actas odontológicas 9.2 (2016): 4-12.\n\n(9) Ramos‐García, Pablo (2021) et al.  cita: Canto, Alan Motta do, et al. "Oral lichen planus (OLP): clinical and complementary diagnosis." Anais brasileiros de dermatologia 85 (2010): 669-675.\n\n(10) Passeron, Thierry, et al. "Treatment of oral erosive lichen planus with 1% pimecrolimus cream: a double-blind, randomized, prospective trial with measurement of pimecrolimus levels in the blood." Archives of dermatology 143.4 (2007): 472-476.\n\n(11)Canto, Alan Motta do, et al. "Oral lichen planus (OLP): clinical and complementary diagnosis." Anais brasileiros de dermatologia 85 (2010): 669-675.\n\n(12) Kobashi, Yūsuke, Sōichi Sakaguchi, and Masao Izawa. "Influence of smoking procedures on combustion temperature of cigarettes and the nicotine content of cigarette smoke." Journal of the Agricultural Chemical Society of Japan 23.6 (1959): 528-532.\n\n(13) Aguas, S. C., and H. E. Lanfranchi Tizeira. "Lesiones premalignas o cancerizables de la cavidad oral." Revista de la Facultad de Odontología (UBA) 19.47 (2004): 24-6.\n\n(14) Osorio, Carolina Hernández, Bernardita Fuentes Palma, and Ricardo Cartes-Velásquez. "Queilitis actínica: aspectos histológicos, clínicos y epidemiológicos." Revista cubana de estomatología 53.2 (2016): 45-55.\n\n(15) Orozco, P., et al. "Prevalencia de queilitis actínica en trabajadores expuestos a radiación ultravioleta en Talca, Chile." Revista clínica de periodoncia, implantología y rehabilitación oral 6.3 (2013): 127-129.\n\n(16) Sánchez Ferra, D., et al. "Guía de práctica clínica para diagnóstico y tratamiento de la queratosis actínica." Dermatología (México, DF) 56.1 (2012): 14-25.\n\n',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeccionEight extends StatelessWidget {
  const SeccionEight({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 1, 1, 101),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        textColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
        title: const Text(
          'Paladar del fumador',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Definición',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: const [
                      const Text(
                        '(Palatitis nicotínica, hábito de fumar invertido).\n\nEl paladar de fumador, se caracteriza por la presencia de zonas blanquecinas plagadas de puntos rojizos, es más frecuente en los fumadores de pipa. Los cambios originados en la mucosa del paladar duro que puede tomar parte del blando, se deben a la acción del tabaco.(12)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      Image(
                        image: AssetImage('assets/12.png'),
                      ),
                      const Text('Imagen propia'),
                    ],
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
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Caracteristicas clinicas:',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Clínicamente se evidencian áreas secas, fisuradas y con escamas sobre la semimucosa labial inferior, debido a que el labio está más expuesto a la radiación ultravioleta y su epitelio es más delgado pues posee una fina capa de queratina con menor cantidad de melanina. (13)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(height: 10),
                    ],
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
