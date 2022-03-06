import 'package:flutter/material.dart';

import '../../shared/components/custom_elevated_button.dart';
import '../../shared/components/string_field.dart';
import '../stores/contact_detail_store.dart';

class ContactDetailForm extends StatelessWidget {
  final ContactDetailStore store;

  const ContactDetailForm({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: store.key,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget> [
          StringField(
            label: 'Nome',
            onSaved: store.saveName,
            controller: store.nameController,
            required: true,
          ),
          StringField(
            label: 'CPF',
            onSaved: store.saveDocument,
            controller: store.documentController,
            required: true,
          ),
          CustomElevatedButton(
            label: 'Salvar',
            onPressed: store.submit,
          ),
        ],
      ),
    );
  }
}