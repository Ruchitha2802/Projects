import 'package:flutter/material.dart';
import 'package:flutter_application_4_namedroutes/get_start.dart';
import 'package:flutter_application_4_namedroutes/routes/app_routes.dart';
import 'package:flutter_application_4_namedroutes/routes/AppPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppRoutes.initial,
      routes: AppPages.routes,
     
         );
  }
}
