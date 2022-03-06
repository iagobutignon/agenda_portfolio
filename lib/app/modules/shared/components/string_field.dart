import 'package:flutter/material.dart';

import './base_field.dart';

class StringField extends StatelessWidget {
  final String label;
  final String requiredMessage;
  final bool required;
  final Function(String?)? onSaved;
  final TextEditingController? controller;
  
  const StringField({
    Key? key,
    required this.label,
    this.required = false,
    this.requiredMessage = 'Campo obrigatório',
    this.onSaved,
    this.controller,
  }) : super(key: key);

  String? _validator(String? value) {
    if (required) {
      if (value == null || value.trim().isEmpty) {
        return requiredMessage;
      }
    } else {
      if (value == null || value.trim().isEmpty) {
        return null;
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BaseField(
      label: label,
      onSaved: onSaved,
      validator: _validator,
      controller: controller,
    );
  }
}