import 'package:flutter_test/flutter_test.dart';
import 'package:lista_flutter/src/home/widgets/task_card.dart';
import 'package:lista_flutter/src/shared/services/realm/models/task_model.dart';
import 'package:realm/realm.dart';

void main() {
  test('task card ...', () {
    final board = TasBoard(Uuid.v4(), 'Nova Lista de tarefas 1');

    final tasks = [
      TaskModel(Uuid.v4(), '', completed: true),
      TaskModel(Uuid.v4(), '', completed: true),
      TaskModel(
        Uuid.v4(),
        '',
      ),
      TaskModel(
        Uuid.v4(),
        '',
      ),
    ];
    final progress = TaskCard(board: board).getProgress(tasks);
    expect(progress, 0.5);
  });
}
