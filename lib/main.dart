import 'package:flutter/material.dart';
import 'package:tpm_uts/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS TPM - 123200006',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Poppins-SemiBold',
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}