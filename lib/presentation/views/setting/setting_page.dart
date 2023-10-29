import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  static const id = 'setting_page';
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
    );
  }
}
