import 'package:flutter/material.dart';

class WorkflowPage extends StatelessWidget {
  const WorkflowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text("Workflow"),
      ),
    );
  }
}
