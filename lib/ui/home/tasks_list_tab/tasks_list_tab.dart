import 'package:daily_tasks_app/ui/components/Task_item.dart';
import 'package:flutter/material.dart';
class TasksListTab extends StatelessWidget {
  const TasksListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       TaskItem(),
        TaskItem(),
        TaskItem(),
      ],
    );
  }
}
