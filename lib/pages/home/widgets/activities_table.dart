import 'package:flutter/material.dart';
import '../components/status_badge.dart';

class ActivitiesTable extends StatelessWidget {
  const ActivitiesTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent Activities',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('User')),
                  DataColumn(label: Text('Activity')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Status')),
                ],
                rows: [
                  _buildTableRow(
                    '#1234',
                    'John Doe',
                    'Created new order',
                    '2024-03-15',
                    'Completed',
                    Colors.green,
                  ),
                  _buildTableRow(
                    '#1235',
                    'Jane Smith',
                    'Updated profile',
                    '2024-03-15',
                    'Pending',
                    Colors.orange,
                  ),
                  _buildTableRow(
                    '#1236',
                    'Bob Johnson',
                    'Deleted product',
                    '2024-03-14',
                    'Failed',
                    Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildTableRow(
    String id,
    String user,
    String activity,
    String date,
    String status,
    Color statusColor,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(id)),
        DataCell(Text(user)),
        DataCell(Text(activity)),
        DataCell(Text(date)),
        DataCell(StatusBadge(
          label: status,
          color: statusColor,
        )),
      ],
    );
  }
}
