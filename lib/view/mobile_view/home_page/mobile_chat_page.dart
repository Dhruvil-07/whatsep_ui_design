import 'package:flutter/material.dart';
import 'package:watsep_ui_design/data/user_data.dart';

class mobile_chat_view extends StatefulWidget {
  const mobile_chat_view({Key? key}) : super(key: key);

  @override
  State<mobile_chat_view> createState() => _mobile_chat_viewState();
}

class _mobile_chat_viewState extends State<mobile_chat_view> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: ListView.builder(
        itemCount: userdata.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(
            ),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        userdata[index]["profilePic"]!
                    ),
                  ),
                  trailing: Text(userdata[index]["time"].toString() ,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  title: Text(userdata[index]["name"].toString() ,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle:  Text(userdata[index]["message"].toString() ,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),

                Divider()
              ],

            ),
          );
        }),
    );
  }
}
