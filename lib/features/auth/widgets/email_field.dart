import 'package:flutter/material.dart';

class EmailField extends StatelessWidget{
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const EmailField({super.key, required this.controller, required this.validator});

  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Email',
            hintText: 'example@email.com',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
          ),
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      );
    }
  }