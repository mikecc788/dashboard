import 'package:flutter/material.dart';
import '../components/nav_item.dart';
import '../models/nav_item_enum.dart';

class SideNav extends StatelessWidget {
  final NavItemEnum selectedItem;
  final ValueChanged<NavItemEnum> onNavItemSelected;

  const SideNav({
    super.key,
    required this.selectedItem,
    required this.onNavItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: const Color(0xFF1a1c1e),
      child: Column(
        children: [
          _buildLogo(),
          Expanded(
            child: _buildNavItems(),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Row(
        children: [
          Text(
            'Admin Panel',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItems() {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        NavItem(
          icon: Icons.dashboard_outlined,
          label: '仪表盘',
          navItem: NavItemEnum.dashboard,
          selectedItem: selectedItem,
          onSelected: onNavItemSelected,
        ),
        NavItem(
          icon: Icons.analytics_outlined,
          label: '数据分析',
          navItem: NavItemEnum.analytics,
          selectedItem: selectedItem,
          onSelected: onNavItemSelected,
        ),
        NavItem(
          icon: Icons.people_outline,
          label: '用户管理',
          navItem: NavItemEnum.users,
          selectedItem: selectedItem,
          onSelected: onNavItemSelected,
        ),
        NavItem(
          icon: Icons.inventory_2_outlined,
          label: '产品管理',
          navItem: NavItemEnum.products,
          selectedItem: selectedItem,
          onSelected: onNavItemSelected,
        ),
        NavItem(
          icon: Icons.image_outlined,
          label: '图片上传',
          navItem: NavItemEnum.images,
          selectedItem: selectedItem,
          onSelected: onNavItemSelected,
        ),
        const Divider(color: Colors.white24),
        NavItem(
          icon: Icons.settings_outlined,
          label: '系统设置',
          navItem: NavItemEnum.settings,
          selectedItem: selectedItem,
          onSelected: onNavItemSelected,
        ),
      ],
    );
  }
}
