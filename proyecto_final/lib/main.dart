import 'package:flutter/material.dart';
import 'package:proyecto_final/screens/homescreen.dart';
import 'package:proyecto_final/screens/loginscreen.dart';
// import 'package:proyecto_final/screens/screen_ahorro.dart';
// import 'package:proyecto_final/screens/screen_corriente.dart';

final controlerP = TextEditingController();
final controlerU = TextEditingController();
void main() {
  runApp(const MaterialApp(
    title: "APP",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

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
            height: 120,
          ),
          Center(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 25,
                decoration:
                    BoxDecoration(border: Border.all(color: const Color(0xFFF39422))),
                child: const Text(
                    "La Aplicacion Perfecta para gestionar de forma correcta el saldo de tu cuenta bancarias",
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
                    "Por favor, ingresa tu Usuario y tu PIN personal para entrar en la APP",
                    style: TextStyle(color: Color(0xFFF39422)))),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent),
              shape: MaterialStateProperty.all(LinearBorder.none),
            ),
            child: const Text(
              "¿Aun no estas registrado?",
              style: TextStyle(color: Color(0xFFF39422)),
            ),
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
            padding: const EdgeInsets.symmetric(horizontal: 100),
            margin: const EdgeInsets.symmetric(horizontal: 100),
            child: TextField(
              controller: controlerU,
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