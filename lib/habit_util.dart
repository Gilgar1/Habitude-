import 'models/habit.dart';

bool isHabitCompletedToday(List<DateTime> CompletedDays) {
  final today = DateTime.now();
  return CompletedDays.any(
    (date) =>
        date.year == today.year &&
        date.month == today.month &&
        date.day == today.day,
  );
}

// Heat Map Data set
Map<DateTime, int> prepHeatMapDataset(List<Habit> habits) {
  Map<DateTime, int> dataset = {};
  for (var habit in habits) {
    for (var date in habit.completedDays) {
      final normalizedate = DateTime(date.year, date.month, date.day);
      if (dataset.containsKey(normalizedate)) {
        dataset[normalizedate] = dataset[normalizedate]! + 1;
      } else {
        dataset[normalizedate] = 1;
      }
    }
  }
  return dataset;
}
