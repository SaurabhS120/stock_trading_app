import 'package:flutter/material.dart';
import 'package:fl_chart_module/fl_chart_module.dart';
class FlChartPage extends StatelessWidget {
  const FlChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FL Chart'),
      ),
      body: SingleChildScrollView(child: CandlestickChartSample1()),
    );
  }
}
