import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../shared/models/contact_model.dart';
import '../components/contact_list_tile.dart';
import '../stores/contact_list_store.dart';

class ContactListPage extends StatefulWidget {
  final String title;
  const ContactListPage({Key? key, this.title = "Contatos"}) : super(key: key);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final ContactListStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ScopedBuilder<ContactListStore, Exception, List<ContactModel>>(
        onLoading: (context) => const CircularProgressIndicator(),
        onState: (context, contacts) {
          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: contacts.length,
            itemBuilder: (context, index) => ContactListTile(
              store: store,
              contact: contacts[index]
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.newContact,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(
          Icons.add,
          size: 30,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
    );
  }
}
