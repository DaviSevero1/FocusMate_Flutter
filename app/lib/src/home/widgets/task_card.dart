import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    final progress = 0.5;
    final progressText = '1/5';
    final title = 'Nova Lista de Tarefas';
    final backgroundColor = Color.fromARGB(255, 100, 64, 76);
    const color = Colors.purple;

    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.add_alarm),
              Spacer(),
              Text('Bblalblalblalbalb')
            ],
          ),
          const Spacer(),
          const Text('Ttile'),
          const LinearProgressIndicator(
            value: 0.5,
            color: color,
          ),
          const Text('1/5')
        ],
      ),
    );
  }
}
