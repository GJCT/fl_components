import 'package:fl_components/theme/themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {


  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled 
            ? (value){
              _sliderValue = value;
              setState((){});
            }
            : null
          ),

          // Checkbox(
          //   value: _sliderEnabled, 
          //   onChanged: (value){
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   }
          // ),

          // Switch(
          //   activeColor: AppTheme.primary,
          //   value: _sliderEnabled, 
          //   onChanged: (value){
          //      _sliderEnabled = value ?? true;
          //       setState(() {});
          //   }
          // ),
          
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: (value){
               _sliderEnabled = value ?? true;
                setState(() {});
            }
          ),

          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            onChanged: (value){
               _sliderEnabled = value;
                setState(() {});
            }
          ),

          const AboutListTile(

          ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://w7.pngwing.com/pngs/383/207/png-transparent-yoriichi-demon-slayer-art-thumbnail.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}