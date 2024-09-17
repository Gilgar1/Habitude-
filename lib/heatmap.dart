import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  final Map<DateTime, int> datasets;
  final DateTime startdate;
  const MyHeatMap({super.key, required this.startdate, required this.datasets});

  @override
  Widget build(BuildContext context) {
    return HeatMap(
      startDate: startdate,
      endDate: DateTime.now().add(const Duration(days: 30)),
      datasets: datasets,
      colorMode: ColorMode.color,
      defaultColor: Theme.of(context).colorScheme.secondary,
      textColor: Colors.white70,
      showColorTip: false,
      showText: true,
      scrollable: true,
      size: 30,
      colorsets: {
        // 1: Colors.blue.shade200,
        // 2: Colors.blue.shade300,
        // 3: Colors.blue.shade400,
        // 4: Colors.blue.shade500,
        // 5: Colors.blue.shade600

        1: Colors.green.shade200,
        2: Colors.green.shade300,
        3: Colors.green.shade400,
        4: Colors.green.shade500,
        5: Colors.green.shade600,
      },
    );
  }
}
