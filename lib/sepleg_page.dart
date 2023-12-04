import 'package:flutter/material.dart';
class SeplegePage extends StatefulWidget {
  const SeplegePage({super.key});

  @override
  State<SeplegePage> createState() => _SeplegePageState();
}

class _SeplegePageState extends State<SeplegePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Zohidjon"
        ),
      ),
    );
  }
}
