import 'package:flutter/material.dart';
import 'package:watsep_ui_design/util/theme/dark_theme.dark.dart';
import 'package:watsep_ui_design/util/theme/theme.dart';
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
      theme: light_theme(context),
      darkTheme: dark_theme(context),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
