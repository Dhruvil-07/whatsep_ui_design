import 'package:flutter/material.dart';

class mobile_chat_view extends StatelessWidget {
   mobile_chat_view({required this.username ,required this.image , Key? key}) : super(key: key);

   String username , image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: Color(0xff128C7E),
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0,),
              Text(username ,
                style: TextStyle(
                  fontSize: 18.0
                ),
              ),
              Text("online" ,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white
                ),
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.only( top: 4.0 , left: 4.0 , right: 4.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(image),
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.video_call , size: 28.0,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.call , size: 24.0,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert , size: 28.0,)),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
             image: AssetImage("assets/images/backgroundimage.png"),
          )
        ),
      ),
    );
  }
}
