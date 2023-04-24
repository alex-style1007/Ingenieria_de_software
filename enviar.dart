import 'package:flutter/material.dart';

class Enviar extends StatelessWidget {
  const Enviar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text(
              'Saldo disponible',
              style: TextStyle(fontSize: 20.0),
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
            const SizedBox(height: 16.0),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Cantidad a enviar',
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text('Enviar'),
              onPressed: () {
                // TODO: Send the data to the server.
              },
            ),
          ],
        ),
      ),
    );
  }
}