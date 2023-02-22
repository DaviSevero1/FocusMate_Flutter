import 'package:flutter/material.dart';
import 'package:lista_flutter/src/home/widgets/custom_drawer.dart';
import 'package:lista_flutter/src/home/widgets/task_card.dart';
import 'package:lista_flutter/src/shared/widgets/user_image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Lista'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.separated(
              padding: const EdgeInsets.only(
                top: 70,
                left: 40,
                right: 40,
                bottom: 200,
              ),
              itemCount: 100,
              itemBuilder: (_, index) {
                return const TaskCard();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SegmentedButton<int>(
                  segments: const [
                    ButtonSegment(
                      value: 0,
                      label: Text('Todos'),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Text('Pendentes'),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Text('Conluídas'),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Text('Desativados'),
                    ),
                  ],
                  selected: const {3},
                  onSelectionChanged: (values) {},
                ),
              ),
            ),
          ],
        ),

      ),

      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
      ),
    );
  }
}
