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
          'Des??rdenes potencialmente malignos (DPM)',
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
                'Definici??n',
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
                    'Cualquier anormalidad de la mucosa que est?? asociada con un riesgo estad??sticamente aumentado de desarrollar c??ncer oral??? (Warnakulasuriya, 2021)  (1) sin embargo, no  todas las lesiones orales  se transforman  en c??ncer oral y algunos c??nceres orales se desarrollan a partir de lesiones que no han tenido displasia ( Speight, 2007 )(2).\n \nDentro de los des??rdenes potencialmente malignos encontramos principalmente la leucoplasia, eritroplasia, liquen plano atr??fico, liquen plano erosivo, queilitis act??nica, lesiones del fumador entre otros.',
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
                    'Datos epidemiol??gicos han evidenciado que el 4,47% de la poblaci??n mundial puede tener OPMD. ( Mello et al., 2018 )(2).\n \nM??ltiples estudios han calculado que la prevalencia de los OPMD var??a entre las poblaciones y se asocia principalmente a los h??bitos, como el consumo de tabaco, alcohol; por lo que los hombres suelen ser m??s afectados que las mujeres, debido a la prevalencia de estos h??bitos. (2)',
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
                'Definici??n',
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
                          'Definido por la Organizaci??n Mundial de la Salud (OMS) como ???una mancha o placa blanca que no se puede caracterizar cl??nica o patol??gicamente como cualquier otra enfermedad???. ',
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
                              '  Es un t??rmino estrictamente cl??nico. Su incidencia oscila entre el 0,2 % y el 17 % de la poblaci??n. (3).\n',
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
                'Clasificaci??n',
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
                            'Placa, de color blanco uniforme, son uniformemente planas y delgadas, tienen una superficie lisa y pueden presentar grietas poco profundas, asintom??tica.\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/1.png'),
                          ),
                          Text(
                            'Imagen tomada de Hern??ndez-P??rez, Francisco, and Samantha Rivera-Mac??as (2019).(4)\n',
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
                                'Mixto, de color blanco y rojo  (eritroleucoplasia ), pero conservando predominantemente la coloraci??n blanca, margenes irregulares.\n',
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
                                'Peque??os crecimientos polipoides, redondeadas, rojas o blancas.\n',
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
                              'Verrugoso o exof??tico',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: [
                              Text(
                                'Superficie elevada, exof??tica, corrugada.\n',
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
                'Epidemiolog??a',
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
                'Mayor riesgo de transformaci??n maligna',
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
                    'La leucoplasia es un t??rmino estrictamente cl??nico, por lo que el primer paso es llegar a un diagn??stico definitivo histopatol??gico. \n\n La biopsia es mandatoria para guiar el curso de tratamiento.',
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
                'Definici??n',
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
                        'Es un tipo de leucoplasia oral, rara, que se caracteriza fundamentalmente por ser multifocal, recidivante y malignizarse en un porcentaje alto.\n\n Se presenta cl??nicamente como una placa blanca que no se desprende al raspado, de crecimiento lento, que con el tiempo se vuelve verrugosa y exof??tica, pudiendo tener ??reas eritematosas y llegando a comprometer diversas partes de la cavidad bucal. (8)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      Image.asset('assets/5.png'),
                      const Text(
                        'Imagen tomada de Ramos???Garc??a, Pablo (2021). (9)',
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
                    '- M??s frecuente en mujeres de edad avanzada (66 a??os).(9)\n\n',
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
                'Localicaci??n',
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
                'Riesgo de trasnformaci??n maligna',
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
                        'Riesgo de transformaci??n maligna: 49,5%. (9)',
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
                'Definici??n',
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
                        'Placa de color rojo intenso que no se puede caracterizar cl??nica ni patol??gicamente como ninguna otra enfermedad definible.\n\nCl??nicamente se presenta como una placa eritematosa de superficie lisa, aterciopelada o granular,  bien delimitada, con una textura suave.(3)',
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
                'Localizaci??n',
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
                    '- Piso de la boca\n- Paladar blando\n- Mucosa yugal\n- La cara ventral de lengua\n- Las am??gdalas(3)\n',
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
                'Sintomatolog??a',
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
                    '- Malestar, sensaci??n de hormigueo\n- Sensibilidad a alimentos calientes o picantes.(1)\n',
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
                'Etiolog??a',
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
                    '- Asociada al tabaco y al alcohol.\n- Exposici??n a agentes carcin??genos.\n- Infecciones virales\n- Dieta baja en antioxidantes\n- Factores gen??ticos (6)',
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
                'Epidemiolog??a',
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
                    '- El 0,2 % y el 0,83 % de la poblaci??n.\n- Predominio por el sexo masculino.\n- Entre la cuarta y sexta d??cadas de la vida. (6)\n',
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
                'Riesgo de transformaci??n maligna',
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
                    'Dado el alto riesgo de evoluci??n a carcinoma se debe hacer biopsia. cerca del 90% de los casos son diagnosticados como displasia epitelial moderada o severa.',
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
                'Definici??n',
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
                    'Es una enfermedad mucocut??nea cr??nica, de car??cter inflamatorio,recurrente.\n\nCl??nicamente\n\n- Presenta varias manifestaciones cl??nicas que se clasifican como t??pico (reticular) y at??pico (forma atr??fica, en placa, erosiva, bullosa y mixta).\n\n- Durante la exploraci??n, hay que tener en cuenta para su diferenciaci??n cl??nica el tipo de lesi??n, la localizaci??n, su bilateralidad y simetr??a.(3)\n',
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
                'Clasificaci??n',
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
                            'Constituye la forma de presentaci??n m??s frecuente. Son l??neas blanquecinas ligeramente elevadas (???estr??as de Wickham???), que no se desprenden con el raspado, dispuestas de forma arboriforme o de red, dejando en su interior ??reas de mucosa normal o eritematosa. La localizaci??n preferencial es la mucosa yugal en el tercio posterior. Suelen ser bilaterales y sim??tricas.(3)\n',
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
                            'Liquen erosivo: se observan ??reas erosivas, ??nicas o m??ltiples, por la p??rdida de soluciones de continuidad en el epitelio. Son de color rojo intenso y con mucha frecuencia presentan formas reticulares en la periferia, se ubican especialmente en la mucosa yugal y la lengua. Cursa con dolor. Cuando el liquen plano oral erosivo se localiza solamente en la enc??a constituye una de las causas de la ???gingivitis descamativa cr??nica.(10)\n',
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
                          'Forma atr??fica',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'Se presenta como una zona eritematosa debida al adelgazamiento del epitelio que transparenta los peque??os vasos sangu??neos de las zonas inflamadas. Se localiza preferencialmente en la lengua como zonas depapiladas, no induradas.(6)\n',
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
                'Etiolog??a',
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
                    'Es desconocida pero se atribuye a factores inmunol??gicos, sin descartar factores agravantes como gen??ticos, infecciosos, neurol??gicos y psicol??gicos.(3)\n',
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
                'Epidemiolog??a',
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
                    '- Incidencia del 2 % en la poblaci??n general.\n\n- Es m??s frecuente en mujeres (60-70 %)\n\n- Con un pico de prevalencia entre los 50 y 55 a??os Aunque aparece con mayor frecuencia en la mediana edad, tambi??n puede desarrollarse en ni??os y j??venes.(3)\n',
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
                'Riesgo de transformaci??n maligna',
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
                    'El riesgo de transformaci??n maligna reportado es de 1,4%. (3)\n\n',
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
          'Queilitis Act??nica',
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
                'Definici??n',
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
                        'La queilitis acti??nica es un desorden potencialmente maligno del labio que ocurre como respuesta a una exposicio??n prolongada a la radiacio??n ultravioleta. Se evidencian alteraciones de la mucosa y semimucosa labial con mayor predominio en la superficie del labio inferior.(14)',
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
                        'Cli??nicamente se evidencian a??reas secas, fisuradas y con escamas sobre la semimucosa labial inferior, debido a que el labio esta?? ma??s expuesto a la radiacio??n ultravioleta y su epitelio es ma??s delgado pues posee una fina capa de queratina con menor cantidad de melanina. (15)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Algunas veces esta??n acompan??ados de ampollas caracteri??sticas de quemadura en su forma aguda. El labio se observa hipoto??nico, con descamacio??n de la semimucosa labial y xerosis. Pueden encontrarse a??reas atro??ficas, leucopla??sicas, erosiones y costras, con periodos de mejoramiento y recidiva. Puede tambie??n presentar dolor y sangrado. Un aspecto relevante es la pe??rdida del borde bermello??n, es decir, no hay una clara separacio??n entre la semimucosa labial y la piel. (16)',
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
                'Epidemiolog??a',
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
                        '- Se presenta con mayor frecuencia en pacientes del sexo masculino, de tez blanca, que superan la cuarta d??cada de la vida.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- Entre la poblaci??n de riesgo se ubica, quienes trabajan al aire libre y han estado cr??nicamente expuestos a la radiaci??n ultravioleta.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- (Es importante establecer aquellos factores que causan irritaci??n de forma directa y cr??nica como el h??bito de fumar, traumatismos a repetici??n y quemaduras.',
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
                'Riesgo de transformaci??n maligna',
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
                        'Tiene potencial de malignizarse a carcinoma escamocelular entre 1 % y 3 % de los casos en la cavidad bucal y es una de las principales causas de c??ncer de labio.',
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
          'Bilbiograf??a',
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
                '(1) (Warnakulasuriya, Saman, et al. "Oral potentially malignant disorders: A consensus report from an international seminar on nomenclature and classification, convened by the WHO Collaborating Centre for Oral Cancer." Oral diseases 27.8 (2021): 1862-1880.)\n\n(2) Kumari, Pratima, Priyanka Debta, and Anshuman Dixit. "Oral Potentially Malignant Disorders: Etiology, Pathogenesis, and Transformation Into Oral Cancer." Frontiers in Pharmacology 13 (2022): 825266-825266.\n\n(3) Tov??o Mart??nez, Eilien Gisek, et al. "Expresiones cl??nicas de los des??rdenes potencialmente malignos en cavidad oral. Revisi??n integrativa de la literatura." Universitas Odontol??gica 37.78 (2018).\n\n(4) Hern??ndez-P??rez, Francisco, and Samantha Rivera-Mac??as. "Leucoplasia homog??nea de cavidad bucal." Oral 20.63 (2019): 1723-1726.\n\n(5) Van der Waal, Isa??c. "Oral leukoplakia, the ongoing discussion on definition and terminology." Medicina oral, patologia oral y cirugia bucal 20.6 (2015): e685.\n\n(6) Warnakulasuriya, Saman. "Clinical features and presentation of oral potentially malignant disorders." Oral surgery, oral medicine, oral pathology and oral radiology 125.6 (2018): 582-590.\n\n(7) Aguirre???Urizar, Jos?? M., Irene Lafuente???Ib????ez de Mendoza, and Saman Warnakulasuriya. "Malignant transformation of oral leukoplakia: Systematic review and meta???analysis of the last 5 years." Oral Diseases 27.8 (2021): 1881-1895. https://doi.org/10.1111/odi.13810\n\n(8) Caffarena, Myriam P??rez, et al. "Leucoplasia verrugosa proliferativa". Actas odontol??gicas 9.2 (2016): 4-12.\n\n(9) Ramos???Garc??a, Pablo (2021) et al.  cita: Canto, Alan Motta do, et al. "Oral lichen planus (OLP): clinical and complementary diagnosis." Anais brasileiros de dermatologia 85 (2010): 669-675.\n\n(10) Passeron, Thierry, et al. "Treatment of oral erosive lichen planus with 1% pimecrolimus cream: a double-blind, randomized, prospective trial with measurement of pimecrolimus levels in the blood." Archives of dermatology 143.4 (2007): 472-476.\n\n(11)Canto, Alan Motta do, et al. "Oral lichen planus (OLP): clinical and complementary diagnosis." Anais brasileiros de dermatologia 85 (2010): 669-675.\n\n(12) Kobashi, Y??suke, S??ichi Sakaguchi, and Masao Izawa. "Influence of smoking procedures on combustion temperature of cigarettes and the nicotine content of cigarette smoke." Journal of the Agricultural Chemical Society of Japan 23.6 (1959): 528-532.\n\n(13) Aguas, S. C., and H. E. Lanfranchi Tizeira. "Lesiones premalignas o cancerizables de la cavidad oral." Revista de la Facultad de Odontolog??a (UBA) 19.47 (2004): 24-6.\n\n(14) Osorio, Carolina Hern??ndez, Bernardita Fuentes Palma, and Ricardo Cartes-Vel??squez. "Queilitis act??nica: aspectos histol??gicos, cl??nicos y epidemiol??gicos." Revista cubana de estomatolog??a 53.2 (2016): 45-55.\n\n(15) Orozco, P., et al. "Prevalencia de queilitis act??nica en trabajadores expuestos a radiaci??n ultravioleta en Talca, Chile." Revista cl??nica de periodoncia, implantolog??a y rehabilitaci??n oral 6.3 (2013): 127-129.\n\n(16) S??nchez Ferra, D., et al. "Gu??a de pr??ctica cl??nica para diagn??stico y tratamiento de la queratosis act??nica." Dermatolog??a (M??xico, DF) 56.1 (2012): 14-25.\n\n',
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
                'Definici??n',
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
                        '(Palatitis nicoti??nica, ha??bito de fumar invertido).\n\nEl paladar de fumador, se caracteriza por la presencia de zonas blanquecinas plagadas de puntos rojizos, es ma??s frecuente en los fumadores de pipa. Los cambios originados en la mucosa del paladar duro que puede tomar parte del blando, se deben a la accio??n del tabaco.(12)',
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
                        'Cli??nicamente se evidencian a??reas secas, fisuradas y con escamas sobre la semimucosa labial inferior, debido a que el labio esta?? ma??s expuesto a la radiacio??n ultravioleta y su epitelio es ma??s delgado pues posee una fina capa de queratina con menor cantidad de melanina. (13)',
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
