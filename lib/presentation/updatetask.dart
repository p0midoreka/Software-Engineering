import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:intl/intl.dart';

import '../data/taskdatabase.dart';
import '../vidgets/input_field.dart';

class UpdateTask extends StatefulWidget{
  final String? login;
  final Task task;
  const UpdateTask({super.key, required this.login, required this.task});

  @override
  State<UpdateTask> createState() => _UpdateTaskState();
}

class _UpdateTaskState extends State<UpdateTask>{
  TaskFirebase mTaskFire = TaskFirebase();
  DatabaseHelperTask mTask = DatabaseHelperTask.instance;
  late var _selectedTitle;
  late var _selectedDate;
  late var _selectedTime;
  late String _selectedTag;
  late final TextEditingController _titleController;

  List<String> TagsList = [
    "Работа",
    "Учёба",
    "Отдых",
    "Семья",
    "Спорт",
    "Питание",
    "Встреча",
    "Прогулка"
  ];


  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedTitle = widget.task.title;
      _selectedDate = widget.task.date;
      _selectedTag = widget.task.tag;
      _selectedTime = widget.task.time;
      _titleController = TextEditingController(text: _selectedTitle);
    });
  }

  _updateTask() async{
    await mTask.update(Task(title: _titleController.text, id: widget.task.id, date: _selectedDate, isCompleted: false, time: _selectedTime, tag: _selectedTag, daysOfWeek: [],));
    mTaskFire.updateTask(widget.login!, Task(title: _titleController.text, id: widget.task.id, date: _selectedDate, isCompleted: false, time:  _selectedTime, tag: _selectedTag, daysOfWeek: [],));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          actionsIconTheme: const IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              onPressed: () async{
                await mTask.remove(widget.task.id);
                Navigator.pop(context, true);
              },
              icon: const Icon(
                Icons.delete,
              ),
            ),
          ],
        ),
        body: Column(
            children: [
              const SizedBox(height: 20,),
              Expanded(
                child: Container(
                    width: double.maxFinite,
                    // height: 500,
                    padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              children: [
                                MyInputField(title: "Название", hint: _selectedTitle, controller: _titleController,),
                                const SizedBox(height: 20,),
                                MyInputField(title: "Дата", hint: _selectedDate,
                                  widget: IconButton(
                                    icon: const Icon(Icons.calendar_month),
                                    onPressed: (){
                                      _getDateFromUser();
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                MyInputField(title: "Время", hint: _selectedTime,
                                  widget: IconButton(
                                    icon: const Icon(Icons.access_time),
                                    onPressed: (){
                                      _getTimeFromUser();
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                _getTagsFromUser(),
                                const SizedBox(height: 20,),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              _validateData();
                                            },
                                            style: ElevatedButton.styleFrom(
                                                padding: const EdgeInsets.all(0),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10))),
                                            child: Ink(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.black,
                                                ),
                                                child: Container(
                                                    width: 120,
                                                    height: 40,
                                                    alignment: Alignment.center,
                                                    child: const Text(
                                                      'Добавить',
                                                    ))))
                                      ]
                                  ),
                                )
                                //значок, цвет, дата
                              ],
                            ),
                          ),
                ),
            ]
        )
    );
  }

  _getTagsFromUser(){
    return Tags(
      horizontalScroll: true,
      itemCount: TagsList.length,
      itemBuilder: (int index){
        final item = TagsList[index];
        if(_selectedTag == item) {
          return ItemTags(
          index: index,
          title: item,
          active: true,
          pressEnabled: true,
          singleItem: true,
          textStyle: const TextStyle( fontSize: 14, ),
          combine: ItemTagsCombine.withTextBefore,
          icon: ItemTagsIcon(
            icon: Icons.add,
          ),
          onPressed: (item) => {
            setState((){
              _selectedTag = item.title!;
            })
          },
        );
        }
        else{
          return ItemTags(
            index: index, // required
            title: item,
            // customData: item.customData,
            singleItem: true,
            textStyle: TextStyle( fontSize: 14, ),
            combine: ItemTagsCombine.withTextBefore,
            icon: ItemTagsIcon(
              icon: Icons.add,
            ),
            onPressed: (item) => {
              setState((){
                _selectedTag = item.title!;
              })
            },
          );
        }

      },
    );
  }
  _getDateFromUser() async{
    DateTime? checkDate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2050));
    String pickerDate = DateFormat.yMd().format(checkDate!);
    if(pickerDate != null){
      setState(() {
        _selectedDate = pickerDate;
      });
    }
  }

  _getTimeFromUser() async{
    TimeOfDay? checkTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, childWidget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  alwaysUse24HourFormat: true),
              child: childWidget!);
        });
    if(checkTime != null){
      setState(() {
        _selectedTime = checkTime.format(context);
      });
    }
  }


  _validateData() {
    if(_titleController.text.isNotEmpty){
      _updateTask();
      Navigator.of(context).pop(true);
    }
    else if(_titleController.text.isEmpty ){
      const snackBar = SnackBar(
          content: Text('Введите название')
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}










