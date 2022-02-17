import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

Widget pieChart (dynamic Function() _getFrameworkSeriesData) {
  return SizedBox(
    height: 270,
    width: 320,
    child: charts.PieChart(
      _getFrameworkSeriesData(),
      animate: true,
      defaultRenderer: charts.ArcRendererConfig<Object>(
          arcWidth: 60,
          arcRendererDecorators: [charts.ArcLabelDecorator()]
      ),
    ),
  );
}