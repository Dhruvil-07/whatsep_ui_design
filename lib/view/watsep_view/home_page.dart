import 'package:flutter/material.dart';
import 'package:watsep_ui_design/util/responsive/responsive.dart';
import 'package:watsep_ui_design/view/mobile_view/home_page/mobile_home_page.dart';
import 'package:watsep_ui_design/view/web_view/home_page.dart/web_home_page.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobileview: mobile_home_view(),
      webview: web_home_view(),
    );
  }
}
