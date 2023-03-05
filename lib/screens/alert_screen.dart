
import 'package:flutter/material.dart';

import 'dart:io';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Este es el contenido de prueba'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton( 
              child: const Text('Cancelar'),
              onPressed: () => Navigator.pop(context)
            )
          ],
        );
      }
    );
  }

  void displayDialog(BuildContext context){
    
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de prueba'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton( 
              child: const Text('Cancelar'),
              onPressed: () => Navigator.pop(context)
            )
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Text('Mostrar Alerta'),
          ),
          onPressed: () => Platform.isAndroid ? displayDialog(context) : displayDialogIOS(context),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}