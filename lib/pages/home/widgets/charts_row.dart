import 'package:flutter/material.dart';

class ChartsRow extends StatelessWidget {
  const ChartsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Card(
            elevation: 0,
            child: Container(
              height: 400,
              padding: const EdgeInsets.all(24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Revenue Overview',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: Center(
                      child: Text('Chart will be implemented here'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Card(
            elevation: 0,
            child: Container(
              height: 400,
              padding: const EdgeInsets.all(24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sales Distribution',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: Center(
                      child: Text('Pie chart will be implemented here'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
