import 'package:chatbot/views/ChatRoom.dart';
import 'package:chatbot/views/Star.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> routes={
  Star.route : (context) =>  Star(),
  ChatState.route : (context)=> Chat(),

};