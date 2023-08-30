import 'package:flutter/material.dart';
import 'package:watsep_ui_design/data/user_data.dart';
import 'package:watsep_ui_design/util/navigation/navigation.dart';
import 'package:watsep_ui_design/view/mobile_view/home_page/mobile_chat_view.dart';

class mobile_user_list_view extends StatefulWidget {
  const mobile_user_list_view({Key? key}) : super(key: key);

  @override
  State<mobile_user_list_view> createState() => _mobile_user_list_viewState();
}

class _mobile_user_list_viewState extends State<mobile_user_list_view> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: userdata.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                        cust_transactinon(
                          child: mobile_chat_view(
                            username: userdata[index]["name"].toString(),
                            image: userdata[index]["profilePic"].toString(),
                          ),
                        ));
                  },
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
