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
              const SizedBox(height: 10),
              const Text(
                'DPM',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: const Color.fromARGB(255, 1, 1, 101),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Martha Carmona Lorduy\nEstomatóloga',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Kimberly Hernández Gutiérrez\nResidente de estomatología y cirugía oral',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Maria José Vasquez Viana\nResidente de estomatología y cirugía oral',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Vanessa Peralta Henao\nResidente de estomatología y cirugía oral',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Kimberly Hernández Gutiérrez\nResidente de estomatología y cirugía oral',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // Image.asset('assets/icono/icono.jpeg'),
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
                      'Empezemos',
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
