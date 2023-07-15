import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField(
    {Key? key, 
    required this.onEmailChanged, 
    required this.placeholder,
    this.obscureText = false,
    })
  : super(
    key: key
  );

  String placeholder;
  bool obscureText;

  final ValueChanged<String> onEmailChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  String value = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextField(
        onChanged: (text) {
          setState(() {
            value = text;
          });
          widget.onEmailChanged(value); // Chamada da função de retorno de chamada com o valor do e-mail
        },
        obscureText: widget.obscureText,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: widget.placeholder,
          labelStyle: const TextStyle(color: Colors.white),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.white)
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.white)
          )
        ),
      ),
    );
  }
}