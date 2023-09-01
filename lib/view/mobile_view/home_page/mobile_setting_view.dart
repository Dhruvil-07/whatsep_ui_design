import 'package:flutter/material.dart';
import 'package:watsep_ui_design/data/setting_detail.dart';

class mobile_setting_view extends StatelessWidget {
  mobile_setting_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          //backgroundColor: Color(0xff128C7E),
          title: Text("Settings" ,
            style: TextStyle(
              letterSpacing: 1.5,
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search_rounded, size: 26.0,),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 20.0,),


              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  children: [

                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage("https://cdn.siasat.com/wp-content/uploads/2020/06/Sushant-Singh-Rajput.jpeg"),
                    ),

                    SizedBox(width: 20.0,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Susant Singh Rajput" ,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),

                        Text("Forever" ,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 80.0,),

                    Icon(Icons.qr_code , size: 30.0, color: Color(0xff128C7E),),

                  ],
                ),
              ),

              SizedBox(height: 20.0,),
              Divider(height: 0.5),


             ...setting_detail.map((e){
               return ListTile(
                 leading: Icon(e["icon"] , size: 30.0,),
                 title: Text(e["title"] ,
                   style: TextStyle(
                     fontSize: 18.0,
                   ),
                 ),
                 subtitle: Text(e["subtitle"] ,
                   style: TextStyle(
                     fontSize: 12.0,
                   ),
                 ),
               );
             }).toList(),

              SizedBox(height: 10.0,),

              Align(
                alignment: Alignment.center,
                child: Text("from" ,
                  style: TextStyle(
                    fontSize:20.0,
                    color:Theme.of(context).brightness == Brightness.light ? Colors.black.withOpacity(0.5) : Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              
              Align(
                alignment: Alignment.center,
                child: Text("Meta" ,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.light ?  Colors.black : Colors.white,
                  ),
                )
              ),



            ],
          ),
        ),
      ),
    );
  }
}
