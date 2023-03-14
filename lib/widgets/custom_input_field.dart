import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {

final String? hintText;
final String? labelText;
final String? helperText;
final IconData? icon;
final IconData? prefixIcon;
final TextInputType? keyboardType;
final bool password;

final String formProperty;
final Map<String, String> formValues;

  const CustomInputField({
    super.key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.prefixIcon, 
    this.keyboardType,
    this.password = false, 
    required this.formProperty, 
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: password,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: '3 caracteres',
          // suffixIcon: Icon(Icons.group_outlined),
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          icon: icon == null ? null : Icon(icon),
        )
    );
  }
}
