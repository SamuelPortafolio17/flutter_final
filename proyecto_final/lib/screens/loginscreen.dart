import 'package:flutter/material.dart';
import 'package:proyecto_final/screens/homescreen.dart';

final controlerP = TextEditingController();
final controlerU = TextEditingController();
final controlerC = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF010038),
      appBar: AppBar(
        backgroundColor: const Color(0xFF293A80),
        title: const Text(
          "BIENVENIDO",
          style: TextStyle(color: Color(0xFFF39422)),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          Center(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 25,
                decoration:
                    BoxDecoration(border: Border.all(color: const Color(0xFFF39422))),
                child: const Text(
                    "Si aun no estas registrado, crea una cuenta para mayor seguridad",
                    style: TextStyle(color: Color(0xFFF39422)))),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 25,
                decoration:
                    BoxDecoration(border: Border.all(color: const Color(0xFFF39422))),
                child: const Text(
                    "Por favor, ingresa un Usuario, un Correo y un PIN personal que sean faciles de recordar",
                    style: TextStyle(color: Color(0xFFF39422)))),
          ),
          const SizedBox(
            height: 90,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            margin: const EdgeInsets.symmetric(horizontal: 80),
            child: TextField(
              controller: controlerU,
              decoration: InputDecoration(
                  labelText: "Escribe tu USUARIO...",
                  labelStyle: const TextStyle(color: Color(0xFFF39422)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: const BorderSide(
                          color: Color(0xFF293A80), style: BorderStyle.solid))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            margin: const EdgeInsets.symmetric(horizontal: 80),
            child: TextField(
              controller: controlerC,
              decoration: InputDecoration(
                  labelText: "Escribe tu CORREO...",
                  labelStyle: const TextStyle(color: Color(0xFFF39422)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: const BorderSide(
                          color: Color(0xFF293A80), style: BorderStyle.solid))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            margin: const EdgeInsets.symmetric(horizontal: 100),
            child: TextField(
              controller: controlerP,
              decoration: InputDecoration(
                  labelText: "Escribe tu PIN...",
                  labelStyle: const TextStyle(color: Color(0xFFF39422)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: const BorderSide(
                          color: Color(0xFF293A80), style: BorderStyle.solid))),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
              (states) => const Color(0xFF293A80),
            )),
            child: const Text("ACCEDER", style: TextStyle(color: Color(0xFFF39422))),
          )
        ],
      ),
    );
  }
}