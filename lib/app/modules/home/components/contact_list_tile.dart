import 'package:flutter/material.dart';

import '../../shared/models/contact_model.dart';

class ContactListTile extends StatelessWidget {
  final ContactModel contact;
  
  const ContactListTile({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name ?? ''),
        subtitle: Text(contact.document ?? ''),
      ),
    );
  }
}