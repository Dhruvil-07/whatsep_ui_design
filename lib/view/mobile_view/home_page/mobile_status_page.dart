import 'package:flutter/material.dart';
import 'package:watsep_ui_design/data/user_data.dart';

class mobile_status_view extends StatefulWidget {
  const mobile_status_view({Key? key}) : super(key: key);

  @override
  State<mobile_status_view> createState() => _mobile_status_viewState();
}

class _mobile_status_viewState extends State<mobile_status_view> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ReuasbleRow(context , "https://s01.sgp1.cdn.digitaloceanspaces.com/article/192191-zjsbewjkkf-1689325731.jpeg" , "My Status" , "12:30 am" , false , true),

        SizedBox(height: 12.0,),

        //recent update
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
            left: 20.0,
              top: 10.0,
            ),
            child: Text("Recent Updates" ,
             style: TextStyle(
               fontSize: 18.0,
             ),
            ),
          ),
        ),
        ReuasbleRow(context , userdata[4]["profilePic"]! , userdata[4]["name"]! , "12:30 am" , true , false),
        ReuasbleRow(context , userdata[2]["profilePic"]! , userdata[2]["name"]! , "12:30 am" , true , false),
        ReuasbleRow(context , userdata[1]["profilePic"]! , userdata[1]["name"]! , "12:30 am" , true , false),

        SizedBox(height: 20.0,),

        //viewed update
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 10.0,
            ),
            child: Text("Viewed  Updates" ,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        ReuasbleRow(context , userdata[0]["profilePic"]! , userdata[0]["name"]! , "12:30 am" , false , false),
        ReuasbleRow(context , userdata[8]["profilePic"]! , userdata[8]["name"]! , "12:30 am" , false, false),
      ],
    );
  }
}



Widget ReuasbleRow(BuildContext ctx , String Imagepath , String Name , String Time , bool Active , bool icon)
{
   return Padding(
     padding: EdgeInsets.only(
       top: 16.0,
     ),
     child: Row(
       children: [

        Container(
             margin: EdgeInsets.only(
               left: 12.0,
             ),
             padding: EdgeInsets.all(1.5),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(40.0),
               border: Border.all(color: Active == true ? Colors.green : Colors.grey ,width: 2.0),
             ),
             child: ClipRRect(
               borderRadius: BorderRadius.circular(40.0),
               child: Image.network(Imagepath ,
                 height: 55.0,
                 width: 55.0,
                 fit: BoxFit.fill,
               ),
             )
           ),

         SizedBox(width: 18.0,),

         Expanded(
           flex: 2,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(Name ,
                 style: TextStyle(
                 fontSize: 18.0,
                 fontWeight: FontWeight.bold,
               ),),
               SizedBox(height: 6.0,),
               Text("Today  ${Time}" ,
                style: TextStyle(
                  fontSize: 14.0,
                ),
               ),
             ],
           ),
         ),

         Spacer(),

         icon == true?
         Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))) :
         Expanded(child: Text("")),

       ],
     ),
   );
}


/*
CircleAvatar(
             radius: 35.0,
             backgroundColor: Active == true ? Colors.green : Colors.grey,
             child:
           ),
         ),
*/