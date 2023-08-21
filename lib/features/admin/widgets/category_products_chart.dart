import 'package:amazone_clone/features/admin/models/sales.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class CategoryProductsChart extends StatelessWidget {
  final List<Sales> seriesList;
  const CategoryProductsChart({
    Key? key,
    required this.seriesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      series: <ColumnSeries<Sales, String>>[
        ColumnSeries<Sales, String>(
          dataSource: seriesList,
          xValueMapper: (Sales sales, _) => sales.label,
          yValueMapper: (Sales sales, _) => sales.earning,
        ),
      ],
    );
  }
}