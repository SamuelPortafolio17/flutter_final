import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final controlerP = TextEditingController();
  final controlerU = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF010038),
        appBar: AppBar(
          backgroundColor: const Color(0xFF293A80),
          title: const Text(
            "BIENVENIDO",
            style: TextStyle(color: Colors.white),
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
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: const Text(
                      "La Aplicacion Perfecta para gestionar de forma correcta el saldo de tu cuenta bancarias",
                      style: TextStyle(color: Colors.white))),
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
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: const Text(
                      "Por favor, ingresa tu Usuario y tu PIN personal para entrar en la APP",
                      style: TextStyle(color: Colors.white))),
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
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90),
                        borderSide: const BorderSide(
                            color: Color(0xFF293A80),
                            style: BorderStyle.solid))),
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
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90),
                        borderSide: const BorderSide(
                            color: Color(0xFF293A80),
                            style: BorderStyle.solid))),
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
              child:
                  const Text("ACCEDER", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controlerP = TextEditingController();
  final controlerU = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF010038),
      appBar: AppBar(
        backgroundColor: const Color(0xFF293A80),
        title: const Text(
          "BIENVENIDO",
          style: TextStyle(color: Colors.white),
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
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: const Text(
                    "Si aun no estas registrado, crea una cuenta para mayor seguridad",
                    style: TextStyle(color: Colors.white))),
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
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: const Text(
                    "Por favor, ingresa un Usuario y un PIN personal que sean faciles de recordar",
                    style: TextStyle(color: Colors.white))),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            margin: const EdgeInsets.symmetric(horizontal: 80),
            child: TextField(
              controller: controlerU,
              decoration: InputDecoration(
                  labelText: "Escribe tu USUARIO...",
                  labelStyle: const TextStyle(color: Colors.white),
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
                  labelStyle: const TextStyle(color: Colors.white),
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
            child: const Text("ACCEDER", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF293A80),
        centerTitle: true,
        title: const Text(
          "INICIO",
          style: TextStyle(color: Colors.white),
        ),
        actions: [ElevatedButton(onPressed: () {}, child: const Text("Yujuu"))],
      ),
      body: const Column(
        children: [
          Text("Siuuuuuu"),
        ],
      ),
    );
  }
}
