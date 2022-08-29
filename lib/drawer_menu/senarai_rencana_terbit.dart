import 'package:flutter/material.dart';

class SenaraiRencanaTerbit extends StatefulWidget {
  const SenaraiRencanaTerbit({Key? key}) : super(key: key);

  @override
  State<SenaraiRencanaTerbit> createState() => _SenaraiRencanaTerbitState();
}

class _SenaraiRencanaTerbitState extends State<SenaraiRencanaTerbit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Senarai Rencana Terbit'),
        backgroundColor: Colors.black,
      ),
    );
  }
}
