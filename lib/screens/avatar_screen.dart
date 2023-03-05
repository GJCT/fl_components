import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.deepOrange[900],
              child: const Text('Deku'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 250,
          backgroundImage: NetworkImage('https://i0.wp.com/www.otakupt.com/wp-content/uploads/2023/01/My-Hero-Academia-6-ed-2-screenshot.jpg?fit=1920%2C1080&ssl=1'),
         ),
      ),
    );
  }
}