import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // need explicit binding before new Firebase call
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
