import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String? id;
  const DetailsPage({super.key, required this.id}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(
        child: Text('Details Page with ID: $id'),
      ),
    );
  }
}
