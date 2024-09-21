import 'package:daily_tasks_app/ui/components/custom_button.dart';
import 'package:daily_tasks_app/ui/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add New Task',textAlign: TextAlign.center,style: Theme.of(context).textTheme.labelSmall),
          CustomTextFormField(labelText: 'Task Title'),
          CustomTextFormField(labelText: 'Task Description',maxLines: 4),
          CustomButton(buttonText: 'Add Task', onButtonClickedCallBack: onButtonClickedCallBack),
          
        ],
      ),
    );
  }

  onButtonClickedCallBack() {
  }
}
