import 'package:flutter/material.dart';
import '../models/nav_item_enum.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final NavItemEnum navItem;
  final NavItemEnum selectedItem;
  final ValueChanged<NavItemEnum> onSelected;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.navItem,
    required this.selectedItem,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = navItem == selectedItem;

    return Material(
      color: isSelected ? Colors.white.withOpacity(0.1) : Colors.transparent,
      child: InkWell(
        onTap: () => onSelected(navItem),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.white : Colors.white70,
                size: 24,
              ),
              const SizedBox(width: 16),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
