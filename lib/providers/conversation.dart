import 'package:flutter/material.dart';
import 'package:mini_mba/models/message.dart';

class Conversation with ChangeNotifier{
  final List<Message> _msgList=[
    Message(
      msg: 'Hi How are you ?',
      left: true,
    ),
    Message(
      msg: 'Yes I\'m fine',
      left: false,
    ),
    Message(
      msg: 'cool',
      left: true,
    ),
  ];


  List<Message> get msglist  {return [..._msgList];}

}