import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dias = [
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda del Doctor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Calendario Semanal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: dias.map((dia) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.blue[100],
                  child: Text(dia),
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Actualizar Disponibilidad'),
            )
          ],
        ),
      ),
    );
  }
}