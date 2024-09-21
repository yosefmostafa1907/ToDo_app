
import 'package:daily_tasks_app/ui/home/add_task_bottom_sheet.dart';
import 'package:daily_tasks_app/ui/home/settings_tab/Settings_tab.dart';
import 'package:daily_tasks_app/ui/home/tasks_list_tab/tasks_list_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
static const String routName='home-screen';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentindex = 0;
List<Widget>tabs=[TasksListTab(),SettingsTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Tasks'),
      ),
      body: tabs[currentindex],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(80),
        //   side: BorderSide(
        //     width: 4,color: Colors.white
        //   )
        // ),
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,width: 4
          )
        ),
        onPressed: () {
          addTaskBottomSheet();
        },
        child: Icon(Icons.add),

      ) ,

      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 8,
        shape:CircularNotchedRectangle(),
        child: BottomNavigationBar(

          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: currentindex,
          onTap: (index) {
            currentindex=index;
            setState(() {});

          },
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.list),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: '')
          ],
        ),
      ),
    );
  }

  void addTaskBottomSheet() {
   showModalBottomSheet(context: context, builder: (context) => AddTaskBottomSheet(),);
  }
}

