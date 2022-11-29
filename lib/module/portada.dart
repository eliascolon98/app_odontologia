import 'package:flutter/material.dart';

class Portada extends StatelessWidget {
  const Portada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 40,
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/logo_udc.jpg'),
              // const SizedBox(height: 10),
              const Text(
                'DPM',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: const Color.fromARGB(255, 1, 1, 101),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Martha Carmona Lorduy\nEstomatóloga',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Laura Werner\nEstomatóloga',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Maria José Vasquez Viana\nResidente de estomatología y cirugía oral',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Kimberly Hernández Gutiérrez\nResidente de estomatología y cirugía oral',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Vanessa Peralta Henao\nResidente de estomatología y cirugía oral',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: InkWell(
                  child: const Hero(
                    tag: 'hero-rectangle',
                    child: Image(
                      image: AssetImage(
                        'assets/portada.jpeg',
                      ),
                    ),
                  ),
                  onTap: () => zoomImage(context),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 1, 1, 101),
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 60,
                  child: const Center(
                    child: Text(
                      'Empecemos',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'home');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
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
                image: AssetImage('assets/portada.jpeg'),
              ),
            ),
          ),
        ),
      );
    },
  );
}
