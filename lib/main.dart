import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mini_mba/providers/conversation.dart';
import 'package:mini_mba/screens/ChatScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=> Conversation(),
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChatScreen(),
      ),
    );
  }
}


