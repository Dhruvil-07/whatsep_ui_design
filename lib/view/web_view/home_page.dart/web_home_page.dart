import 'package:flutter/material.dart';

class web_home_view extends StatefulWidget {
  const web_home_view({Key? key}) : super(key: key);

  @override
  State<web_home_view> createState() => _web_home_viewState();
}

class _web_home_viewState extends State<web_home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("web view"),
      ),
    );
  }
}
