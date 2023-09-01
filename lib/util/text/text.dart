import 'package:flutter/material.dart';

class text extends StatelessWidget {
    text({ required this.containt ,
    this.fontsize = 20.0,
    this.fontWeight = FontWeight.bold,
      this.color,
    Key? key}) : super(key: key);

  String containt;
  double fontsize;
  FontWeight fontWeight;
  Color? color;

  @override
  Widget build(BuildContext context) {
    var color_base_on_theme = Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white;
    return Text(containt ,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color == null ? color_base_on_theme : color,
      ),
    );
  }
}
