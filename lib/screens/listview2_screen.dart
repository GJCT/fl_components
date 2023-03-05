import 'package:flutter/material.dart';

import 'package:fl_components/theme/themes.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Hero', 'One Push', 'PacMan'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Type 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
        ), 
        separatorBuilder: (_ , __) => const Divider(), 
        itemCount: options.length,
        )
      );
  }
}