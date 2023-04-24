import 'package:flutter/material.dart';

import 'Home.dart';
import 'enviar.dart';

class MenuP extends StatelessWidget {
  const MenuP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 171, 219, 38),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Saldo Disponible
            const Text( "Saldo Disponible",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontStyle: FontStyle.normal,
              ),
            ),
            // Account number
            const Text( "Número de cuenta",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontStyle: FontStyle.normal,
              ),
            ),
            // Code per cashier
            const Text( "Codigo transferencia",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontStyle: FontStyle.normal,
              ),
            ),
            // Transfer button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Enviar()),
                );
                print('Ingresando a Tranferencias');
              },
              child: SizedBox(
                width: 200,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'Transferir',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Return button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                width: 200,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'Regresar',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}