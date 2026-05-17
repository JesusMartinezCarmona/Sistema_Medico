import 'package:flutter/material.dart';

class PacienteScreen extends StatelessWidget {
  const PacienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel del Paciente'),
      ),
      body: Row(
        children: [
          Container(
            width: 250,
            color: Colors.grey[200],
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Filtros',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text('Clínica'),
                SizedBox(height: 10),
                Text('Especialidad'),
                SizedBox(height: 10),
                Text('Doctor'),
                SizedBox(height: 10),
                Text('Fecha'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Horarios Disponibles',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: [
                        horarioCard('Dr. Martínez', '09:00 AM'),
                        horarioCard('Dra. López', '11:00 AM'),
                        horarioCard('Dr. Ramírez', '01:00 PM'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 250,
            color: Colors.blue[50],
            padding: const EdgeInsets.all(20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Próxima Cita',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text('Doctor: Dra. López'),
                Text('Fecha: 15/05/2026'),
                Text('Hora: 11:00 AM'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget horarioCard(String doctor, String hora) {
    return Card(
      child: ListTile(
        title: Text(doctor),
        subtitle: Text(hora),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text('Agendar'),
        ),
      ),
    );
  }
}