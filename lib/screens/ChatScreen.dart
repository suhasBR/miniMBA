import 'package:flutter/material.dart';
import 'package:mini_mba/providers/conversation.dart';
import 'package:provider/provider.dart';

import 'package:mini_mba/widgets/MessageBox.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    final messages = Provider.of<Conversation>(context);
    final msgData = messages.msglist;

    return Scaffold(
      body: InkWell(
          child : Container(
            padding: EdgeInsets.only(left: 7,right: 7),
            child: ListView.builder(
            itemBuilder: (context, i) => MessageBox(msgData[i].msg,msgData[i].left),
            itemCount: count,
        ),
          ),
        onTap: (){
          if(count < msgData.length){
                     setState(() {
            count++;
          });
          }
        },
      ),
    );
  }
}
