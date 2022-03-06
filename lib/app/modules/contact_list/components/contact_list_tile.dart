import 'package:flutter/material.dart';

import '../../shared/models/contact_model.dart';
import '../stores/contact_list_store.dart';

class ContactListTile extends StatelessWidget {
  final ContactListStore store;
  final ContactModel contact;
  
  const ContactListTile({
    Key? key,
    required this.store,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => store.editContact(contact),
        title: Text(contact.name ?? ''),
        subtitle: Text(contact.document ?? ''),
      ),
    );
  }
}