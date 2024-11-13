import 'package:flutter/material.dart';
import '../components/stat_card.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth > 1200 ? 4 : 2;
        return GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          childAspectRatio: 1.5,
          children: const [
            StatCard(
              icon: Icons.people_outline,
              title: 'Total Users',
              value: '1,234',
              trend: '+12%',
              color: Colors.blue,
            ),
            StatCard(
              icon: Icons.shopping_cart_outlined,
              title: 'Total Orders',
              value: '567',
              trend: '+23%',
              color: Colors.green,
            ),
            StatCard(
              icon: Icons.attach_money,
              title: 'Revenue',
              value: '\$12,345',
              trend: '+18%',
              color: Colors.orange,
            ),
            StatCard(
              icon: Icons.trending_up,
              title: 'Growth',
              value: '23%',
              trend: '+2.3%',
              color: Colors.purple,
            ),
          ],
        );
      },
    );
  }
}
