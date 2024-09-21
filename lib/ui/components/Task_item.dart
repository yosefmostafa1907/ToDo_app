import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: .3,
        motion: DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      endActionPane: ActionPane(
        extentRatio: .3,
        motion:DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Edit',
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        margin: EdgeInsets.symmetric(vertical: 12),
        height: 95,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child:Row(
          children: [
            Container(
              width: 2,
              height: 65,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Task Title'),
                  Text('Task Description'),
                ],
              ),
            ),
            Container(
              padding:EdgeInsets.symmetric(vertical: 4,horizontal: 16) ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).primaryColor,
              ),
              child:Icon(Icons.check,color: Colors.white) ,
            ),
          ],
        ) ,
      ),
    );
  }
}
