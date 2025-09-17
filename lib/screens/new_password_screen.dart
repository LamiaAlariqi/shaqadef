import 'package:flutter/material.dart';
import 'package:shaqadef/screens/bodies/forget_password_body.dart';
import 'package:shaqadef/screens/bodies/new_password_body.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewPasswordBody(),
    );
  }
}