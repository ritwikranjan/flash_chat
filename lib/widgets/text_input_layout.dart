import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    Key key,
    @required this.hint,
    this.isPassword = false,
    this.onChanged,
    this.prefixIcon,
  }) : super(key: key);

  final String hint;
  final bool isPassword;
  final void Function(String) onChanged;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: isPassword,
      enableSuggestions: !isPassword,
      autocorrect: !isPassword,
      style: TextStyle(color: Colors.black87),
      decoration: InputDecoration(
        prefixIcon: (prefixIcon != null)
            ? Icon(
                prefixIcon,
                color: Colors.black54,
              )
            : null,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.black38),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
