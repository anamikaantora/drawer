import 'package:flutter/material.dart';

class PluginsPage extends StatelessWidget {
  const PluginsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text("Plugins"),
      ),
    );
  }
}
