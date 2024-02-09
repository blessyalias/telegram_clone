// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text('Telegram',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 15,),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
        contentPadding: EdgeInsets.only(top: 5,left: 10),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: ExactAssetImage("assets/images/602ccc72b2f2e2001df1a885.png"),
        ),
        title: Padding(padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Cerin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
          Text("10:30 AM",style: TextStyle(color: Colors.white),),],
        ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("See you there",style: TextStyle(color: Colors.white),),
            CircleAvatar(
              backgroundColor: Colors.green,radius: 12,
              child: Text("3",style: TextStyle(color: Colors.white),)),],),
        ),
          );
          Divider(color: Colors.white,thickness: 2,);
        }
      ),
    );
  }
}