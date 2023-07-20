import 'package:flutter/material.dart';

import 'package:quiz_app/widgets/summary_items.dart';

class QueationSummary extends StatelessWidget {
  const QueationSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItems(itemData: data);
          }).toList(),
        ),
      ),
    );
  }
}
