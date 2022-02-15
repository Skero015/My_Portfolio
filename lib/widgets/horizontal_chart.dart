import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

Widget horizontalChart (dynamic Function() _getLanguageSeriesData) {
  return SizedBox(
    height: 325,
    width: 400,
    child: charts.BarChart(
      _getLanguageSeriesData(),
      vertical: false,
      animate: true,
      defaultRenderer: charts.BarRendererConfig(
          cornerStrategy: const charts.ConstCornerStrategy(30)),

      domainAxis: const charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(

          // Tick and Label styling here.
            labelStyle: charts.TextStyleSpec(
                fontSize: 16, // size in Pts.
                fontWeight: 'bold',
                color: charts.MaterialPalette.black),

            // Change the line colors to match text color.
            lineStyle: charts.LineStyleSpec(
                color: charts.MaterialPalette.transparent)),
      ),
      primaryMeasureAxis: const charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(

          // Tick and Label styling here.
            labelStyle: charts.TextStyleSpec(
                fontSize: 18, // size in Pts.
                color: charts.MaterialPalette.black),

            // Change the line colors to match text color.
            lineStyle: charts.LineStyleSpec(
                color: charts.MaterialPalette.transparent)),),
    ),
  );
}