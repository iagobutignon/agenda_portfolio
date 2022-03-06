import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/models/contact_model.dart';
import '../components/contact_detail_form.dart';
import '../stores/contact_detail_store.dart';

class ContactDetailPage extends StatefulWidget {
  final String title;
  final ContactModel? contact;
  
  const ContactDetailPage({Key? key, this.title = 'Detalhes do contato', this.contact}) : super(key: key);
  
  @override
  ContactDetailPageState createState() => ContactDetailPageState();
}
class ContactDetailPageState extends State<ContactDetailPage> {
  final ContactDetailStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.setContact(widget.contact);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ContactDetailForm(
        store: store
      ),
    );
  }
}