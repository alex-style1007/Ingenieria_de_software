import 'package:flutter/material.dart';

import 'Home.dart';
import 'ensayo.dart';
import 'enviar.dart';

class Login_view extends StatelessWidget {
  const Login_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 120, 212),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'LoGin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Ingresar número de cuenta',
                ),
              ),
            ),
            const SizedBox(width: 250),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Ingresar Contraseña',
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MenuP()),
                );
                print('presiono el boton de inicio');
              },
              child: const Text('Iniciar seccion'),
            ),
          ],
        ),
      ),
    );
  }
}