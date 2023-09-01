import 'package:flutter/material.dart';
import 'package:watsep_ui_design/data/user_data.dart';

class mobile_call_view extends StatefulWidget {
  const mobile_call_view({Key? key}) : super(key: key);

  @override
  State<mobile_call_view> createState() => _mobile_call_viewState();
}

class _mobile_call_viewState extends State<mobile_call_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4.0,
        ),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index){
            return reusablerow(
                userdata[index]["profilePic"].toString() ,
                userdata[index]["name"].toString(),
                " (1) Today , ${userdata[index]["time"]}",
                index.isEven ? Icons.call : Icons.video_call,
                index,
            );
          }),
      ),
    );
  }
}



//reusable row
Widget reusablerow(String Imagepath , String name , String detail , IconData icon , int index)
{
   return Padding(
     padding: const EdgeInsets.only(
       left: 8.0,
       right: 12.0,
       top: 12.0,
       bottom: 10.0,
     ),
     child: Row(
        children: [

          CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(Imagepath),
            ),

          SizedBox(width: 20.0,),

          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name ,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0,),
                  Row(
                    children: [
                      Icon(Icons.call_made , size: 18.0,color: Colors.black.withOpacity(0.6),),
                      Text(detail ,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),



          Icon(icon , size: 30.0, color: index == 2 || index == 5 ? Colors.red : Colors.green,),

        ],
     ),
   );
}