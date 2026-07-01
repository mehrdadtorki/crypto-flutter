import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget{
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState(); 
}

class _LoginButtonState extends State<LoginButton> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> submitForm() async {
    print('the submiting form has been called');
  }

  @override
  Widget build(BuildContext context){
    return TextButton(onPressed: submitForm, child: Text('submit form'));
  }
}