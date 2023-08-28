import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watsep_ui_design/view/mobile_view/home_page/mobile_call_view.dart';
import 'package:watsep_ui_design/view/mobile_view/home_page/mobile_chat_page.dart';
import 'package:watsep_ui_design/view/mobile_view/home_page/mobile_status_page.dart';

class mobile_home_view extends StatefulWidget {
  const mobile_home_view({Key? key}) : super(key: key);

  @override
  State<mobile_home_view> createState() => _mobile_home_viewState();
}

class _mobile_home_viewState extends State<mobile_home_view> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff128C7E),
          title: Text("WhatsApp" ,
          style: TextStyle(
            letterSpacing: 1.0,
          ),
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.camera_alt_sharp, size: 24.0,),
            ),

            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search_rounded, size: 26.0,),
            ),

            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert, size: 24.0,),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [

              Tab(
                child: Text("Chats" , style: TextStyle(fontSize: 16.0),),
              ),
              Tab(
                child: Text("Status" , style: TextStyle(fontSize: 16.0),),
              ),
              Tab(
                child: Text("Calls" , style: TextStyle(fontSize: 16.0),),
              ),


            ],
          ),
        ),
        body: SafeArea(
          child: Center(
            child: TabBarView(
              children: [
                mobile_chat_view(),
                mobile_status_view(),
                mobile_call_view(),
              ],
            )
          ),
         ),
        ),
    );
  }
}
