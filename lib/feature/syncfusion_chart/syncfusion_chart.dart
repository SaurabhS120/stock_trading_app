import 'package:flutter/material.dart';
import 'package:syncfusion_chart_module/syncfusion_chart_demo.dart';

class SyncfusionChartPage extends StatelessWidget {
  const SyncfusionChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syncfusion Chart'),
      ),
      body: const SyncfusionChartDemo(),
    );
  }
}
