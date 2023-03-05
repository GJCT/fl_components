import 'package:flutter/material.dart';

import 'package:fl_components/theme/themes.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Hero', 'One Push', 'PacMan'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Type 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (e) => ListTile(
              title: Text(e), trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,),
            )
          ).toList()
        ],
      )
      );
  }
}