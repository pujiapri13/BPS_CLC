// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExitButton extends StatefulWidget {
  const ExitButton({Key? key}) : super(key: key);

  @override
  _ExitButtonState createState() => _ExitButtonState();
}

class _ExitButtonState extends State<ExitButton> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tombol Keluar ESIH RUNGKAD URUNG FUNGSI'),
    );
  }
}
