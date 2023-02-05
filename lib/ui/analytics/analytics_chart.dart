// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class AnalyticsChart extends StatelessWidget {
//   const AnalyticsChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

// // Define data structure for a bar group
// class DataItem {
//   int x;
//   double y1;
//   double y2;
//   double y3;
//   DataItem(
//       {required this.x, required this.y1, required this.y2, required this.y3});
// }

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);

//   // Generate dummy data to feed the chart
//   final List<DataItem> _myData = List.generate(
//       30,
//       (index) => DataItem(
//             x: index,
//             y1: Random().nextInt(20) + Random().nextDouble(),
//             y2: Random().nextInt(20) + Random().nextDouble(),
//             y3: Random().nextInt(20) + Random().nextDouble(),
//           ));


      
//       Padding(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: SizedBox(
//             width: 3000,
//             child: BarChart(BarChartData(
//                 borderData: FlBorderData(
//                     border: const Border(
//                   top: BorderSide.none,
//                   right: BorderSide.none,
//                   left: BorderSide(width: 1),
//                   bottom: BorderSide(width: 1),
//                 )),
//                 groupsSpace: 10,
//                 barGroups: _myData
//                     .map((dataItem) =>
//                         BarChartGroupData(x: dataItem.x, barRods: [
//                           BarChartRodData(
//                               y: dataItem.y1,
//                               width: 15,
//                               colors: [Colors.amber]),
//                           BarChartRodData(
//                               y: dataItem.y2, width: 15, colors: [Colors.red]),
//                           BarChartRodData(
//                               y: dataItem.y3, width: 15, colors: [Colors.blue]),
//                         ]))
//                     .toList())),
//           ),
//         ),
//       ),
//     );
//   }
// }