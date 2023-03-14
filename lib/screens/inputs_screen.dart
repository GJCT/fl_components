import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'Gabriel',
      'last_name'  : 'Cardona',
      'email'      : 'gabriel@mail.com',
      'password'   : '123456',
      'role'       : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre a ingresar', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido a ingresar', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Correo', hintText: 'Correo a ingresar', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña a ingresar', password: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField(
                  items: const[
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ], 
                  onChanged: (value){
                    //print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                  ),
          
                ElevatedButton( 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar')
                      )
                    ),
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()){
                      return;
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

