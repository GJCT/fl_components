import 'package:flutter/material.dart';

import 'package:fl_components/widgets/custom_card_type_1.dart';
import 'package:fl_components/widgets/custom_card_type_2.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://www.networkrail.co.uk/wp-content/uploads/2022/11/Loch-Awe-1024x683.jpg'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://blog.nzibs.co.nz/wp-content/uploads/2020/02/Landscape-1280x640.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Un lago', imageUrl: 'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?cs=srgb&dl=pexels-james-wheeler-1619317.jpg&fm=jpg'),
          SizedBox(height: 20),
          
        ],
      ),
    );
  }
}

