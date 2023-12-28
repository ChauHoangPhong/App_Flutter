import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String hintText;

  PasswordField({required this.hintText});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}