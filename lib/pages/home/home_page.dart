import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'models/nav_item_enum.dart';
import 'widgets/side_nav.dart';
import 'widgets/top_bar.dart';
import 'widgets/stats_grid.dart';
import 'widgets/charts_row.dart';
import 'widgets/activities_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavItemEnum _selectedItem = NavItemEnum.dashboard;

  void _handleNavItemSelected(NavItemEnum item) {
    setState(() {
      _selectedItem = item;
    });

    // 根据选择的导航项进行路由跳转
    switch (item) {
      case NavItemEnum.dashboard:
        context.goNamed('home');
        break;
      case NavItemEnum.analytics:
        context.goNamed('analytics');
        break;
      case NavItemEnum.users:
        context.goNamed('users');
        break;
      case NavItemEnum.products:
        context.goNamed('products');
        break;
      case NavItemEnum.settings:
        context.goNamed('settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNav(
            selectedItem: _selectedItem,
            onNavItemSelected: _handleNavItemSelected,
          ),
          Expanded(
            child: Column(
              children: [
                const TopBar(),
                Expanded(
                  child: _buildMainContent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPageHeader(),
          const SizedBox(height: 24),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StatsGrid(),
                  SizedBox(height: 24),
                  ChartsRow(),
                  SizedBox(height: 24),
                  ActivitiesTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Welcome back, Admin',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Add New'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
        ),
      ],
    );
  }
}
