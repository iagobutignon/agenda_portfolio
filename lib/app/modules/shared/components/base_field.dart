import 'package:flutter/material.dart';

class BaseField extends StatelessWidget {
  final String label;
  final Function(String?)? onSaved;
  final double leftMargin;
  final double topMargin;
  final double rightMargin;
  final double bottomMargin;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const BaseField({
    Key? key, 
    required this.label,
    this.onSaved,
    this.leftMargin = 0,
    this.topMargin = 5,
    this.rightMargin = 0,
    this.bottomMargin = 5,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(leftMargin, topMargin, rightMargin, bottomMargin),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
            gapPadding: 2
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.primary.withAlpha(20),
          prefixIconColor: Theme.of(context).colorScheme.primary,
          labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}