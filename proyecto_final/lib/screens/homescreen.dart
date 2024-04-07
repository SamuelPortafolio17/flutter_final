import 'package:flutter/material.dart';
import 'package:proyecto_final/screens/screen_ahorro.dart';
import 'package:proyecto_final/screens/screen_corriente.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String fromattedDate = "${now.day}/${now.month}/${now.year}";


    return Scaffold(
      backgroundColor: const Color(0xFF010038),
      appBar: AppBar(
        backgroundColor: const Color(0xFF293A80),
        centerTitle: true,
        title: const Text(
          "INICIO",
          style: TextStyle(color: Color(0xFFF39422)),
        ),
        actions: [ElevatedButton(onPressed: null, style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => const Color(0xFF293A80)), side: MaterialStateBorderSide.resolveWith((states) => const BorderSide(color: Color(0xFFF39422)))), child: Text(fromattedDate, style: const TextStyle(color: Color(0xFFF39422)),),)],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF010038),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(decoration: BoxDecoration(color: Color(0xFF293A80)), child: Text("OPCIONES", style: TextStyle(color: Color(0xFFF39422)),),),            
            ListTile(
              title: const Text("CUENTA CORRIENTE", style: TextStyle(color: Color(0xFFF39422)),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CorrienteScreen(),
              ));
              },
            ),
            ListTile(
              title: const Text("CUENTA AHORRO", style: TextStyle(color: Color(0xFFF39422)),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AhorroScreen(),
              ));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 110,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: const Color(0xFFF39422)), borderRadius: BorderRadiusDirectional.circular(20)),
              height: 150,
              width: 450,
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("SALDO (CORRIENTE) ", style: TextStyle(color: Color(0xFFF39422)),),
                      Text("AAAAAA", style: TextStyle(color: Color(0xFFF39422)))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("PA VE ", style: TextStyle(color: Color(0xFFF39422))),
                      Text("AAAAAA", style: TextStyle(color: Color(0xFFF39422)))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text("PA VE ", style: TextStyle(color: Color(0xFFF39422))),
                      Text("AAAAAA", style: TextStyle(color: Color(0xFFF39422)))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: const Color(0xFFF39422)), borderRadius: BorderRadiusDirectional.circular(20)),
              height: 150,
              width: 450,
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("SALDO (AHORRO) ", style: TextStyle(color: Color(0xFFF39422)),),
                      Text("AAAAAA", style: TextStyle(color: Color(0xFFF39422)))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("PA VE ", style: TextStyle(color: Color(0xFFF39422))),
                      Text("AAAAAA", style: TextStyle(color: Color(0xFFF39422)))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text("PA VE ", style: TextStyle(color: Color(0xFFF39422))),
                      Text("AAAAAA", style: TextStyle(color: Color(0xFFF39422)))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}