import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({ required this.mobileview , required this.webview , Key? key}) : super(key: key);

  final Widget mobileview , webview;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth >= 900)
            {
              return webview;
            }
          else
            {
              return mobileview;
            }
        },
      ),
    );
  }
}
