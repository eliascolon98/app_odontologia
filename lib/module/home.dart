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
            'DESÓRDENES POTENCIALMENTE MALIGNOS',
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
          SeccionConclusiones(),
          SeccionSeven(),
          Game(),
          SizedBox(height: 60),
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
            child: ExpansionTile(
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text:
                          'Los desórdenes potencialmente malignos son aquellas situaciones clínicas en la cavidad bucal que presentan peligro de un aumento de malignización neoplásica, debido a la exposición a factores de riesgo o alteraciones genéticas.\n \nSe identifican por ser lesiones tumorales que, por lo habitual, invaden rápidamente, infiltran, destruyen los tejidos adyacentes y poseen la capacidad de diseminarse a otros sitios en el cuerpo.\n \nDentro de los desórdenes potencialmente malignos encontramos principalmente, la leucoplasia, Eritroleucoplasia, Eritroplasia, Liquen plano, Queilitis Actínica, Paladar del fumador invertido.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: '(1).',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.11144/javeriana.uo37-78.ecdp'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
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
                          'La Organización Mundial de la Salud, define la leucoplasia oral como como una lesión de predominio blanco que no se puede caracterizar clínica ni patológicamente como ninguna otra enfermedad sin tener en cuenta los criterios histológicos.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: '(1).',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://doi.org/10.11144/Javeriana.uo37-78.ecdp'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
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
                  child: RichText(
                    text: TextSpan(
                      text:
                          '- Su incidencia oscila entre el 0,2 % y el 17 % de la población. La distribución por sexo varía de acuerdo con factores de riesgo como tabaquismo y consumo de alcohol. \n\n - Proporción 3:1 entre hombres y mujeres  \n\n - Predominante hacia la cuarta o hacia la sexta década de la vida',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: '(1).',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.11144/javeriana.uo37-78.ecdp'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                            'Muestra un color blanco uniforme, y suelen ser asintomáticas. (Figura 1 y 2)\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/homo.png'),
                          ),
                          Text(
                            '\nFigura 1: Placa blanca homogénea localizada en piso de boca, de 8 mm de diámetro, que hacia la izquierda presenta tendencia a verrugosidad, con bordes definidos, irregulares, asintomática, de evolución desconocida y etiología desconocida (Imagen propia).\n ',
                          ),
                          Image(
                            image: AssetImage('assets/homo2.png'),
                          ),
                          Text(
                            '\nFigura 2: Placa blanca localizada en semimucosa labial inferior, de 7 mm de diámetro, de forma oval irregular, de bordes definidos en zona donde el paciente apoya el cigarrillo, asintomática, de 6 meses de evolución y con etiología asociada a tabaco (Imagen propia).\n ',
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
                                'mixto, de color blanco y rojo  (eritroleucoplasia ), pero conservando predominantemente la coloración blanca, márgenes irregulares.\n',
                                textAlign: TextAlign.justify,
                              ),
                              Image(
                                image: AssetImage('assets/nohomo.png'),
                              ),
                              Text(
                                  'Figura 4: Eritroleucoplasia en lengua.\n \nPlaca de color blanquecino, en cara dorsal y ventral de lengua difusa, bordes irregulares de tamaño aproximado 13x5mm, superficies eritematosas (Imagen propia).'),
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
                                'Figura 5: Imagen tomada de Van Der Waal (2).\n \nMúltiples vegetaciones blancas, aspecto granular, en tercio medio y anterior de la mucosa yugal, bordes irregulares tamaño de aproximado 12x2mm, asintomáticas, de evolución y etiología desconocida.',
                                textAlign: TextAlign.justify,
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
                                image: AssetImage('assets/nohomo3.png'),
                              ),
                              Text(
                                'Figura 6: Verrugosidad blanca, en encía marginal y adherida anterosuperior, bordes irregulares, de tamaño aproximado 30x 3mm de bordes irregulares, de superficie rugosa asintomática, de 8 meses de evolución y etiología desconocida (Imagen propia).\n',
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
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Histología',
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
                      ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            Color.fromARGB(255, 1, 1, 101),
                        title: Text(
                          'Histología',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Image(
                            image: AssetImage('assets/leu2.png'),
                          ),
                          Text(
                            'Figura 7. Imagen tomada de Carmona (3). \nHiperqueratosis y acantosis e infiltrado inflamatorio crónico.\n',
                            textAlign: TextAlign.justify,
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
                          'Clasificación de displasia',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'La leucoplasia puede ser sin displasia o con displasia (4).\n\nÉstas se clasifican en: \n',
                            textAlign: TextAlign.justify,
                          ),
                          Column(
                            children: [
                              InkWell(
                                child: const Hero(
                                  tag: 'hero-rectangle',
                                  child: Image(
                                    image: AssetImage(
                                      'assets/leu3.png',
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
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Diagnóstico diferencial',
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
                          '- Leucoedema\n\n- Liquen plano\n\n- Hiperqueratosis friccional',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Tratamiento',
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
                          'En primer lugar, se eliminan los factores desencadenantes y se extrema la higiene bucal, mediante enjuagues de clorhexidina y la eliminación de dientes y prótesis capaces de retener placa bacteriana ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: '(7).',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.1016/j.aprim.2019.02.008'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                  image: AssetImage('assets/leu3.png'),
                ),
              ),
            ),
          ),
        );
      },
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
                      // const SizedBox(height: 10),
                      // Image.asset('assets/5.png'),
                      // const Text(
                      //   'Imagen tomada de Ramos‐García, Pablo (2021). (9)',
                      // ),
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
                    'Los datos publicados sobre su prevalencia en población general oscilan entre el 0,2 % y el 4,5 %.\n\nLa edad promedio es de 62 años y es cuatro veces más común en mujeres que en hombres. \n\nNo existe predilección racial y a pesar de los intentos por asociarla a un factor determinado como el tabaco, aún no se ha podido detectar una relación válida con ninguno de ellos (9)',
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
                'Caracteristicas clinicas',
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
                      Text(
                        'Pueden aparecer como una lesión única, localizada, como lesiones difusas, en extensas áreas de la mucosa oral, o incluso como lesiones múltiples. De igual forma, el aspecto clínico de las leucoplasias es muy heterogéneo, al variar desde áreas maculares, lisas y ligeramente blanquecinas y translúcidas, a placas blancas, elevadas, gruesas, firmes y con superficie rugosa y fisurada. En general son asintomáticas, y en algunos casos presentan una ligera sensación de ardor.\n\n- -	Los carrillos y labios resultaron los sitios más frecuentes de localización. (10) \n',
                        textAlign: TextAlign.justify,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/leu1.png',
                        ),
                      ),
                      Text(
                        '\nFigura 11: Placa blanca, verrucosa, exofítica , ubicada en cara dorsal de la lengua, de 15 mm de diámetro aproximadamente, de bordes irregulares, difusos, superficie rugosa,  asintomática, de 1 mes de evolución y etiología asociada al consumo de tabaco (Imagen propia).',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Histología',
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
                      Image(
                        image: AssetImage('assets/histo1.png'),
                      ),
                      Text(
                        'Figura 12. Imagen tomada de Fernández (11)\nCambios displásicos,grueso y acantósico revestimiento epitelial con una marcada hiperparaqueratosis y mantención de la membrana basal (11)\n',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Diagnóstico diferencial',
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
                          '- Papiloma escamoso.\n\n- Leucoplasia nodular\n\n- Candidiasis pseudomembranosas.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Tratamiento',
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
                          'Se han propuesto una gran variedad de intervenciones terapéuticas, incluyendo la cirugía, terapia con láser de dióxido de carbono, terapia fotodinámica, quimioterapia y radiación. Desafortunadamente, ninguno de estos tratamientos parece ser satisfactorio.\n\n',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
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
                        'Placa de color rojo intenso que no se puede caracterizar clínica ni patológicamente como ninguna otra enfermedad definible. Asociado al hábito de tabaquismo y consumo de alcohol, exposición a agentes carcinógenos, infecciones virales, dieta baja en antioxidantes y factores genéticos. (1)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      // Image.asset('assets/6.png'),
                      // const Text('Imagen propia')
                    ],
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
                    '- El 0,2 % y el 0,83 % de la población.\n- Predominio por el sexo masculino.\n- Entre la cuarta y sexta décadas de la vida. \n- Riesgo de transformación maligna entre 14%-50% (1)',
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
                'Caracteristicas clinicas',
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
                      Text(
                        '- Placa eritematosa de superficie lisa, aterciopelada o granular, bien delimitada, con una textura suave. (12).\n- Localizado principalmente en el piso de la boca, paladar blando, mucosa yugal, la cara ventral de lengua, las amígdalas (1).\n- Los pacientes pueden presentar malestar, sensación de hormigueo, sensibilidad a alimentos calientes o picantes. (13).\n',
                        textAlign: TextAlign.justify,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/eri2.png',
                        ),
                      ),
                      Text(
                        '\nFigura 13. Imagen tomada de Hosni. (12) Placa roja que se extiende desde paladar blando izquierdo hasta pilar amigdalino anterior izquierdo de aproximadamente 10 mm de altura, de bordes regulares, difusos, de levemente sintomática, evolución y etiología desconocida. ',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Histología',
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
                      Image(
                        image: AssetImage('assets/eri3.png'),
                      ),
                      Text(
                        'Figura 14. Imagen tomada de Oliveira. (6)\nHiperplasia focal de la capa basal, pérdida de polaridad celular y una disqueratosis celular solitaria.\n',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Diagnóstico diferencial',
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
                          '- Carcinoma escamocelular.\n\n- Candidiasis atrófica.\n\n- Liquen plano atrófico.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Tratamiento',
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
                          'Eliminación de factores irritantes y resección quirúrgica con márgenes amplios que permita el estudio histológico de la lesión para descartar la existencia de un carcinoma epidermoide. .\n\n',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
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
          'Liquen plano oral',
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
                  child: Column(
                    children: [
                      Text(
                        'Es una enfermedad mucocutánea crónica, de carácter inflamatorio, recurrente. La etiología del Liquen plano es desconocida. No obstante, se atribuye a factores inmunológicos, sin descartar factores agravantes como genéticos, infecciosos, neurológicos y psicológicos.\n \nSu fisiopatología es de tipo autoinmune mediada por linfocitos T, que afecta al epitelio escamoso estratificado. Ocasiona un ataque inmunológico a los queratinocitos basales originado por factores exógenos o endógenos, que provocan una transformación en la respuesta a autoantígenos (1).\n',
                        textAlign: TextAlign.justify,
                      ),
                      Image(
                        image: AssetImage('assets/lin1.png'),
                      ),
                      Text(
                          'Figura 15: Placa blanca difusa, rodeada zonas eritematosas difusas en región retromolar, de aproximadamente 15x10mm de ancho, sintomática de evolución y etiología desconocida (imagen propia).')
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
                    'Por cada hombre afectado hay aproximadamente 3-4 mujeres que padecen la enfermedad.\n\nSe cuestiona si los factores hormonales en la mujer influyen en el mayor número de formas eritematosas sintomáticas y por lo tanto de mayor demanda de consulta, no enmascaran las proporciones en relación a la incidencia de la enfermedad en la población general (14). \n',
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
                'Caracteristicas clinicas',
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
                      Text(
                        '-	Presenta varias manifestaciones clínicas que se clasifican como típico (reticular) y atípico (forma atrófica, en placa, erosiva, bullosa y mixta).',
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '\n- Durante la exploración, hay que tener en cuenta para su diferenciación clínica el tipo de lesión, la localización, su bilateralidad y simetría.',
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '\n-	Usualmente se afecta la mucosa oral, labios, zona gingival, suelo de la boca y paladar (14).',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Histología',
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
                      Image(
                        image: AssetImage('assets/lin2.png'),
                      ),
                      Text(
                        'Figura 16. Imagen tomada de Villanueva. (15)\nSe observa epitelio escamoso estratificado paraqueratinizado, pérdida de la continuidad de la capa basal y clavos epiteliales irregular, infiltrado inflamatorio de predominio linfocitario denso localizado en banda en región subepitelial.\n',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Diagnóstico diferencial',
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
                          '- Leucoplasia.\n\n- Gingivitis descamativas.\n\n- Psoriasis.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Tratamiento',
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
                          'Lo primero que se debe hacer es eliminar los factores traumáticos próximos a la lesión, tales como restos radiculares, aristas cortantes, ganchos de prótesis etc. Es necesario también eliminar los factores irritantes locales como el tabaco, alcohol y especias. La higiene bucal debe ser exquisita eliminando los depósitos de sarro y tratando de equilibrar psicológicamente al paciente (1).\n\n',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                          'Liquen Plano Reticular',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'Constituye la forma de presentación más frecuente. Son líneas blanquecinas ligeramente elevadas (“estrías de Wickham”), que no se desprenden con el raspado, dispuestas de forma arboriforme o de red, dejando en su interior áreas de mucosa normal o eritematosa. La localización preferencial es la mucosa yugal en el tercio posterior. Suelen ser bilaterales y simétricas.(3)Constituye la forma de presentación más frecuente. Son líneas blanquecinas ligeramente elevadas (“estrías de Wickham”), que no se desprenden al raspado, dispuestas de forma arboriforme o de red, dejando en su interior áreas de mucosa normal o eritematosa. La localización preferencial es la mucosa yugal en el tercio posterior. Suelen ser bilaterales y simétricas. (1)\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/lin3.png'),
                          ),
                          Text(
                              'Figura 17. Múltiples placas difusas en mucosa yugal izquierda y labial inferior, de color blanquecino, en forma de red, en toda la extensión de mucosas, rodeadas de halo eritematoso, asintomáticas, de 12 meses de evolución y etiología desconocida (Imagen propia).\n')
                        ],
                      ),
                      const ExpansionTile(
                        collapsedIconColor: Colors.white,
                        collapsedTextColor: Colors.cyan,
                        collapsedBackgroundColor:
                            Color.fromARGB(255, 1, 1, 101),
                        title: Text(
                          'Liquen Plano Erosivo',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        children: [
                          Text(
                            'Se observan áreas erosivas, únicas o múltiples, por la pérdida de soluciones de continuidad en el epitelio. Son de color rojo intenso y con mucha frecuencia presentan formas reticulares en la periferia, se ubican especialmente en la mucosa yugal y la lengua. Cursa con dolor. Cuando el liquen plano oral erosivo se localiza solamente en la encía constituye una de las causas de la gingivitis descamativa crónica (15).\n',
                            textAlign: TextAlign.justify,
                          ),
                          Image(
                            image: AssetImage('assets/8.png'),
                          ),
                          Text(
                              'Figura 18. Placa eritematosa localizada en encía adherida y libre eritematosa en maxilar superior e inferior generalizado, de bordes irregulares, difusos, sintomático a la palpación, de 1 mes de evolución y etiología desconocida (imagen propia).\n'),
                          SizedBox(height: 10),
                        ],
                      ),
                      ExpansionTile(
                          collapsedIconColor: Colors.white,
                          collapsedTextColor: Colors.cyan,
                          collapsedBackgroundColor:
                              Color.fromARGB(255, 1, 1, 101),
                          title: Text(
                            'Liquen Plano Atrófico',
                            style: TextStyle(
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold,
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
                                  ExpansionTile(
                                    collapsedIconColor: Colors.white,
                                    collapsedTextColor: Colors.cyan,
                                    collapsedBackgroundColor:
                                        Color.fromARGB(255, 1, 1, 101),
                                    title: Text(
                                      'Definición',
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    children: [
                                      Text(
                                        'Se presenta como una zona eritematosa debida al adelgazamiento del epitelio que transparenta los pequeños vasos sanguíneos de las zonas inflamadas. Se localiza preferencialmente en la lengua como zonas depapiladas, no induradas.\n\nLa etiología es desconocida, pero se atribuye a factores inmunológicos, sin descartar factores agravantes como genéticos, infecciosos, neurológicos y psicológicos. (1)\n',
                                        textAlign: TextAlign.justify,
                                      ),
                                      Image(
                                        image: AssetImage('assets/lin4.png'),
                                      ),
                                      Text(
                                        'Múltiples zonas atróficas extensas, ubicadas en zona retromolar, de bordes irregulares y de superficie eritematosa, sintomáticas, de 1 mes de evolución y de etiología desconocida (imagen propia).\n',
                                        textAlign: TextAlign.justify,
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
                                      'Epidemiología',
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    children: [
                                      Text(
                                        '- Incidencia del 2 % en la población general.\n\n- Es más frecuente en mujeres (60-70 %)\n\n- con un pico de prevalencia entre los 50 y 55 años Aunque aparece con mayor frecuencia en la mediana edad, también puede desarrollarse en niños y jóvenes\n\n- El riesgo de transformación maligna reportado es de 1,4%. (1)',
                                        textAlign: TextAlign.justify,
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
                                      'Características clínicas',
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    children: [
                                      Text(
                                        'En el examen   estomatológico se evidencian mucosas de color rojo intenso, presencia de múltiples ulceraciones. Zonas erosivas-descamativas (16).\n',
                                        textAlign: TextAlign.justify,
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
                                      'Diagnóstico diferencial',
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    children: [
                                      Text(
                                        '- Liquen plano atrófico.\n\n- Gingivitis descamativa.\n\n- Pénfigo vulgar',
                                        textAlign: TextAlign.left,
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
                                      'Tratamiento',
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    children: [
                                      Text(
                                        '- No hay ningún tratamiento  definitivo  para  el  liquen plano oral  sintomático,  los corticosteroides corresponden al tratamiento empírico más ampliamente aceptado,  ya  que  alivian  los  síntomas,  disminuyen  el  dolor y permiten períodos de remisión, pero en lesiones crónicas el uso frecuente de estos fármacos origina efectos secundarios  que  afectan  la  morbilidad  del  paciente  o pueden  generar  resistencia  al  tratamiento.\n\n- Terapia láser (16).\n',
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ]),
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
                        'La queilitis actínica es un desorden potencialmente maligno del labio que ocurre como respuesta a una exposición prolongada a la radiación ultravioleta. Se evidencian alteraciones de la mucosa y semimucosa labial con mayor predominio en la superficie del labio inferior.(18)',
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
                      SizedBox(height: 10),
                      Text(
                        '- En la distribución por la edad la se presenta en la quinta década mostrando la mayoría de los casos entre 40 y 70 años (19)',
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
                'Caracteristicas clinicas',
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
                        'Clínicamente se evidencian áreas secas, fisuradas y con escamas sobre la semimucosa labial inferior, debido a que el labio está más expuesto a la radiación ultravioleta y su epitelio es más delgado pues posee una fina capa de queratina con menor cantidad de melanina. ',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Algunas veces están acompañados de ampollas características de quemadura en su forma aguda. El labio se observa hipotónico, con descamación de la semimucosa labial y xerosis. Pueden encontrarse áreas atróficas, leucoplásicas, erosiones y costras. (18)',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(height: 10),
                      const SizedBox(height: 10),
                      Image.asset('assets/que1.png'),
                      const Text(
                          'Figura 22.\n\n a.	Úlcera redondeada localizada en semimucosa labial inferior con extensión a borde bermellón, de 6 mm de diámetro aproximadamente, de forma esférica, con bordes crateriformes, con punteado eritematoso en centro de lesión, asintomática. Se evidencia borramiento del borde bermellón labio inferior, de 12 meses de evolución y etiología asociada a rayos U.V (Imagen propia).\n\n c.	Placa blanca, única, de forma rectangular, localizada en el labio inferior del lado izquierdo, de aproximadamente 1,5 cm de ancho x 1,0 cm  de largo, seca, inmóvil ,de bordes irregulares y combinada con áreas ulceradas, descamativas y costrosas en todo el contorno y borde bermellón, sintomática , de 2 meses de evolución y etiología asociada a rayos U.V (Imagen propia).'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Histología',
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
                      Image(
                        image: AssetImage('assets/que2.png'),
                      ),
                      Text(
                        'Figura 24. Imagen tomada de Boza (19)\nHiperqueratosis con paraqueratosis, y ortoqueratosis, zonas de hiperplasia y atrofia, displasia leve. En la lámina propia hay marcada elastosis solar y vasos sanguíneos talangectásicos.\n',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Diagnóstico diferencial',
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
                          '- Liquen plano erosivo.\n\n- Queratoacantoma.\n\n- Carcinoma basocelular.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Tratamiento',
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
                          'El tratamiento para la queilitis actínica comienza por instruir al paciente a tomar medidas de protección contra los rayos UV, ya sea mediante el correcto uso de protectores solares o utilizando vestimenta adecuada Choi recomienda un manejo farmacológico tópico mediante el uso de 5-fluorouracilo o diclofenaco. Finalmente se puede optar por una intervención quirúrgica incluyendo procedimientos como la crioterapia, ablación con láser, bermilionectomía o terapia fotodinámica (20).\n',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
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
          'Bibliografía',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text:
                          'Los desórdenes potencialmente malignos son de suma importancia identificarlos con el fin de prevenir la progresión a cáncer oral, por tal motivo es imprescindible la educación al personal de la salud, para que tengan la capacidad de realizar diagnóstico oportuno y su respectivo plan de tratamiento. ',
                      style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '1. Tovío Martínez EG, Carmona Lorduy MC, Díaz-Caballero AJ, Harris Ricardo J, Lanfranchi Tizeira HE. Expresiones clínicas de los trastornos potencialmente malignos en la cavidad oral. Revisión integrativa de la literatura. Univ Odontol [Internet]. 2018;37(78). Available from: ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://dx.doi.org/10.11144/javeriana.uo37-78.ecdp.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.11144/javeriana.uo37-78.ecdp'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '2. Van der Waal I. Oral leukoplakia, the ongoing discussion on definition and terminology. Med Oral Patol Oral Cir Bucal [Internet]. 2015;20(6):e685-92. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: 'http://dx.doi.org/10.4317/medoral.21007.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.4317/medoral.21007'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '3. Carmona Lorduy M, Pimienta Vásquez L, Porto Puerta I, Pérez Martínez M. Caracterización epidemiológica de pacientes fumadores invertidos en Cartagena, Colombia. Acta Odontol Colomb [Internet]. 2019 [cited 2023 Jan 16];9(2):47–58. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'https://revistas.unal.edu.co/index.php/actaodontocol/article/view/79428.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://revistas.unal.edu.co/index.php/actaodontocol/article/view/79428'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '4. Martínez-Sahuquillo Márquez A, Gallardo Castillo I, Cobos Fuentes MJ, Caballero Aguilar J, Bullón Fernández P. La leucoplasia oral: Su implicación como lesión precancerosa. Av Odontoestomatol [Internet]. 2008;24(1). Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://dx.doi.org/10.4321/s0213-12852008000100003.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.4321/s0213-12852008000100003'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '5.  Aguirre Echebarría P, Aguirre Urízar JM. Displasia epitelial: Concepto y significación. Av Odontoestomatol [Internet]. 2008;24(1). Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://dx.doi.org/10.4321/s0213-12852008000100008.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.4321/s0213-12852008000100008'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '6. DE OLIVEIRA, Rossane Mendonça. Eritroplasia oral: una revisión de la literatura. 2011.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '7.  Palmerín-Donoso A, Cantero-Macedo AM, Tejero-Mas M. Oral leukoplakia. Aten Primaria [Internet]. 2020;52(1):59–60. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://dx.doi.org/10.1016/j.aprim.2019.02.008.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.1016/j.aprim.2019.02.008'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '8. Caffarena M. Leucoplasia verrugosa proliferativa Actas odontológicas 9. 2016;2:4-12.',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '9. Altozano-Rodulfo P, Sierra-Santos L. Lengua blanca: leucoplasia verrucosa proliferativa. Rev clín med fam [Internet]. 2019;12(3):163–6. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'https://scielo.isciii.es/scielo.php?script=sci_arttext&pid=S1699-695X2019000300163&lng=es.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://scielo.isciii.es/scielo.php?script=sci_arttext&pid=S1699-695X2019000300163&lng=es'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '10. Toledo Cabarcos Y, Suárez Sori B, Mesa López A, Albornoz López del Castillo C. Caracterización clínico e histopatológica de la leucoplasia bucal. Arch méd Camagüey [Internet]. 2018;22(4):432–51. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://scielo.sld.cu/scielo.php?script=sci_arttext&pid=S1025-02552018000400432&lng=es.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://scielo.sld.cu/scielo.php?script=sci_arttext&pid=S1025-02552018000400432&lng=es'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '11. Fernández Moraga A, Marshall M, Esguep Sarah A. Leucoplasia Verrucosa Proliferativa: A Propósito de un Caso Clínico. Int J Odontostomatol [Internet]. 2013;7(3):379–83. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'https://www.scielo.cl/scielo.php?pid=S0718-381X2013000300007&script=sci_arttext&tlng=en.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://www.scielo.cl/scielo.php?pid=S0718-381X2013000300007&script=sci_arttext&tlng=en'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '12. Hosni ES, Salum FG, Cherubini K, Yurgel LS, Figueiredo MAZ. Eritroplasia e leucoeritroplasia oral: análise retrospectiva de 13 casos. Rev Bras Otorrinolaringol [Internet]. 2009;75(2):295–9. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'https://www.scielo.br/j/rboto/a/4q7nVv7zK6fz5hTpnCq3LTc/?lang=pt&format=html.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://www.scielo.br/j/rboto/a/4q7nVv7zK6fz5hTpnCq3LTc/?lang=pt&format=html'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '13.  Warnakulasuriya S, Kujan O, Aguirre-Urizar JM, Bagan JV, González-Moles MÁ, Kerr AR, et al. Oral potentially malignant disorders: A consensus report from an international seminar on nomenclature and classification, convened by the WHO Collaborating Centre for Oral Cancer. Oral Dis [Internet]. 2021;27(8):1862-80. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: 'http://dx.doi.org/10.1111/odi.13704.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.1111/odi.13704'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '14. Vergara Hernández CI, Díaz Caballero A, Barrios García L. Liquen plano en la cavidad oral. Reporte de un caso clínico y Revisión de la literatura. Acta odontol. venez. 2011;49(4). Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'https://www.actaodontologica.com/ediciones/2011/4/art-14/.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://www.actaodontologica.com/ediciones/2011/4/art-14/'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '15. Passeron T, Lacour J-P, Fontas E, Ortonne J-P. Treatment of oral erosive lichen planus with 1% pimecrolimus cream: a double-blind, randomized, prospective trial with measurement of pimecrolimus levels in the blood: A double-blind, randomized, prospective trial with measurement of pimecrolimus levels in the blood. Arch Dermatol [Internet]. 2007;143(4):472-6. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: 'http://dx.doi.org/10.1001/archderm.143.4.472.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.1001/archderm.143.4.472'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '16.  Espitia-Nieto SM, Gómez-Romero MÁ, Vargas-Pérez JA. Láser de diodo; opción terapéutica para liquen plano erosivo resistente a corticoterapia: reporte de caso. Duazary [Internet]. 2016;13(1):47. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text: 'http://dx.doi.org/10.21676/2389783x.1587.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.21676/2389783x.1587'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '17. Francisco Paricio Rubio J, Revenga Arranz F, Ramírez Gasca T, Boned Blas P. Leucoqueratosis nicotínica del paladar. Actas Dermosifiliogr [Internet]. 2002;93(1-2):38-41. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://dx.doi.org/10.1016/s0001-7310(02)79168-0.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://dx.doi.org/10.1016/s0001-7310(02)79168-0'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '18. Hernández Osorio C, Fuentes Palma B, Cartes-Velásquez R. Queilitis actínica: aspectos histológicos, clínicos y epidemiológicos. Rev Cubana Estomatol [Internet]. 2016 [cited 2023 Jan 16];53(2):45-55. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://scielo.sld.cu/scielo.php?script=sci_arttext&pid=S0034-75072016000200008.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://scielo.sld.cu/scielo.php?script=sci_arttext&pid=S0034-75072016000200008'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '19. Boza Oreamuno YV, Guillén Colombari D. Queilitis actínica: Reporte de tres casos y revisión de literatura. Odovtos - Int J Dent Sci [Internet]. 2018 [cited 2023 Jan 16];20(3):33-42. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'https://www.scielo.sa.cr/scielo.php?script=sci_arttext&pid=S2215-34112018000300033.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://www.scielo.sa.cr/scielo.php?script=sci_arttext&pid=S2215-34112018000300033'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          '20.  Iparraguirre Nuñovero MF, Fajardo X, Carneiro E, Couto-Souza PH. Desórdenes orales potencialmente malignos. Lo que el odontólogo debe conocer. Rev Estomatol Hered [Internet]. 2020 [cited 2023 Jan 16];30(3):216-23. Available from: ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'http://www.scielo.org.pe/scielo.php?script=sci_arttext&pid=S1019-43552020000300216.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'http://www.scielo.org.pe/scielo.php?script=sci_arttext&pid=S1019-43552020000300216'),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                ],
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
                        'La palatitis nicotínica o lesión en paladar de pacientes con hábito de fumar invertido es una patología cuyo aspecto clínico es variable. Se ha observado que hay una relación entre el no consumo y la resolución de las lesiones. Esto sucede cuando una persona suspende el hábito de fumar, por ello se atribuye como agente etiológico el tabaco o cigarrillo fumado de forma no convencional.\n\nEl lugar de predilección es el paladar duro, aunque también se puede encontrar en paladar blando. Se caracteriza por la presencia de zonas blanquecinas plagadas de puntos rojizos, es más frecuente en los fumadores de pipa. Los cambios originados en la mucosa del paladar duro que puede tomar parte del blando, se deben a la acción del tabaco. (1)\n',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      // Image(
                      //   image: AssetImage('assets/12.png'),
                      // ),
                      // const Text('Imagen propia'),
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
                    children: [
                      const Text(
                        '- Predominio sexo femenino.\n\n- Las poblaciones que practican el hábito del tabaquismo invertido están ubicadas principalmente en zonas tropicales o subtropicales y en zonas montañosas lluviosas (1). ',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
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
                      Text(
                        'Dentro de las manifestaciones clínicas, inicialmente se evidencia una reacción de tipo eritematoso, que luego evoluciona a mancha, placa o verrugosidad de color blanco grisáceo en el paladar duro. Está acompañada de pápulas rojas de 1-5 mm de diámetro, con engrosamiento focal alrededor de los orificios de salida de los conductos de las glándulas salivales palatinas menores.',
                        textAlign: TextAlign.justify,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/pal1.png',
                        ),
                      ),
                      Text(
                        '\nFigura 20. \n\n a.	Placa blanquecina y amarillenta en paladar duro, blando y reborde alveolar difusa, acompañada de pápulas rojizas de 1,5mm de diámetro aproximadamente, de bordes irregulares, de superficie rugosa. Consistencia firme, asintomática a la palpación no desprendible al raspado, evolución desconocida y etiología asociada a tabaquismo invertido (Imagen propia).\n\n b.	Placa blanquecina en paladar duro con extensión a paladar blando, difusa, no desprendible al raspado, acompañada en superficie con pápulas rojizas de 1.5mm de diámetro aproximadamente, asintomática, de evolución desconocida y etiología asociada a tabaquismo crónico (imagen propia).\n',
                        textAlign: TextAlign.justify,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/pal2.png',
                        ),
                      ),
                      Text(
                        '\nFigura 21. \n\nPlaca de color café en cara dorsal de la lengua, de aproximadamente 12mm largo por 7mm ancho, que no desprende al raspado, de bordes irregulares, asintomática a la palpación evolución desconocida y etiología asociada a tabaquismo invertido (imagen propia).\n',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Histología',
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
                      Image(
                        image: AssetImage('assets/pal3.png'),
                      ),
                      Text(
                        'Figura 21. Imagen tomada de Rubio (17)\n',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Diagnóstico diferencial',
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
                      text: '- Leucoplasia.\n\n- Leucoedema.\n\n',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              collapsedTextColor: Colors.blue,
              collapsedBackgroundColor: const Color.fromARGB(255, 1, 1, 101),
              title: const Text(
                'Tratamiento',
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
                          'Las lesiones de estomatitis nicotínica son lentamente reversibles, total o parcialmente, tras la supresión del hábito tabáquico. Por ello, y dado su carácter benigno, la recomendación terapéutica será la abstención del tabaco (17)\n',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
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

class SeccionConclusiones extends StatelessWidget {
  const SeccionConclusiones({
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
          'Conclusiones',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text:
                          'Los desórdenes potencialmente malignos son de suma importancia identificarlos con el fin de prevenir la progresión a cáncer oral, por tal motivo es imprescindible la educación al personal de la salud, para que tengan la capacidad de realizar diagnóstico oportuno y su respectivo plan de tratamiento. ',
                      style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
