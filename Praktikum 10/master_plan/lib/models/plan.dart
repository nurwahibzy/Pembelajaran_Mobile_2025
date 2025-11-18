import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({this.name = '', this.tasks = const []});

  int get completenessCount => tasks.where((task) => task.complete).length;

  String get completenessMessage =>
      '$completenessCount of ${tasks.length} tasks completed';
}
