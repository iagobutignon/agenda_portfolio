import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import './app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Agenda Portfolio',
      theme: AppTheme.defaultTheme, 
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}