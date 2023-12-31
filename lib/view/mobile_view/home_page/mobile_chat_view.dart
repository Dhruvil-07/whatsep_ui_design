import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:watsep_ui_design/data/message_data.dart';

class mobile_chat_view extends StatelessWidget {
   mobile_chat_view({required this.username ,required this.image , Key? key}) : super(key: key);

   String username , image;
   String description = "Messages and call are end-to-end encrypted";


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
          leading : Padding(
            padding: EdgeInsets.only(
              top: 12.0, left: 6.0,
            ),
            child: CircleAvatar(
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
             image: NetworkImage(
                 Theme.of(context).brightness == Brightness.light ?
                 "https://cdn.wallpapersafari.com/4/11/WofyVJ.png" :
                 "https://i.pinimg.com/736x/85/ec/df/85ecdf1c3611ecc9b7fa85282d9526e0.jpg",
             ),
          ),
        ),
        child: Column(
          children: [

            SizedBox(height: 10.0,),

            //end to end encrypt text
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 56.0,
                vertical: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light ?  Color(0xFFFFF3C2) : Colors.yellow.shade200,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(description,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                ),
              )
            ),


            SizedBox(height: 16.0,),


            //message list
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: messages.length,
                itemBuilder: (context, index){
                  return  Align(
                    alignment: messages[index]["isMe"] == false ? Alignment.centerLeft : Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only( left: 10.0 , right: 10.0 , top: 16.0, bottom: 4.0),
                      child: Container(
                        child: ClipPath(
                          clipper: UpperNipMessageClipperTwo( messages[index]["isMe"] == false ? MessageType.receive : MessageType.send),
                          child:Container(
                            constraints: BoxConstraints(
                              maxWidth: 300.0,
                            ),
                            color: Theme.of(context).brightness == Brightness.light ?
                            messages[index]["isMe"] == false ? Colors.white : Color(0xFFE4FDCA) :
                            messages[index]["isMe"] == false ? Colors.grey.withOpacity(0.7) : Colors.teal,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 10.0 ,
                                bottom: 10.0 ,
                                left: messages[index]["isMe"] == false ? 30.0 : 20.0 ,
                                right: messages[index]["isMe"] == false ? 20.0 : 30.0 ,
                              ),
                              child: Text(messages[index]["text"].toString(),
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            ),


          ],
        ),
      ),
    );
  }
}