import 'package:flutter/material.dart';
import 'package:provider_example/screens/login_page.dart';
import 'providers/provider.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        title: 'Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
      create: (context) => MyProvider(),
    );
  }

}
