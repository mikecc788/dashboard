import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildSearchField(),
          ),
          const SizedBox(width: 16),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        _buildIconButton(Icons.notifications_outlined),
        _buildIconButton(Icons.settings_outlined),
        const SizedBox(width: 16),
        const CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
        ),
      ],
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {},
        color: Colors.grey[700],
      ),
    );
  }
}
