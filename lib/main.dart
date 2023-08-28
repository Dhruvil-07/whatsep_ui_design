import 'package:flutter/material.dart';
import 'package:watsep_ui_design/view/watsep_view/home_page.dart';

void main()
{
   runApp(my_whatsep());
}


class my_whatsep extends StatelessWidget {
  const my_whatsep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
