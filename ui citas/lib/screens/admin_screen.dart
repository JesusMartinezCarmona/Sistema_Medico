import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel Administrativo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardInfo('Usuarios', '120'),
                cardInfo('Citas', '340'),
                cardInfo('Doctores', '18'),
                cardInfo('Pacientes', '560'),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Registrar Nuevo Usuario'),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Juan Pérez'),
                    subtitle: Text('Paciente'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Ana López'),
                    subtitle: Text('Doctor'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Carlos Ruiz'),
                    subtitle: Text('Administrador'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cardInfo(String titulo, String valor) {
    return Card(
      child: Container(
        width: 150,
        height: 120,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              valor,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}