import 'package:fl_components/theme/themes.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;
   
  const CustomCardType2({
    Key? key, 
    required this.imageUrl, 
    this.name
  }): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children: [
          FadeInImage(
            image:  NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 330,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 250),
          ),

          if(name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name ?? 'Not Title'),
          )
          
        ]
      ),
    );
  }
}