import 'package:isar/isar.dart';
part 'habit.g.dart';

@collection
class Habit {
  //id
  Id id = Isar.autoIncrement;

  //name
  late String name;
  // completed Day
  List<DateTime> completedDays = [
    //DateTime(year,month,day)
  ];
}
