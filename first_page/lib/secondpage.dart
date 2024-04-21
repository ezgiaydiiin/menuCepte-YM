import 'package:first_page/UstKisim.dart';
import 'package:first_page/sayfa.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UstKisim(),
      body: Sayfa(),

    );
  }
}