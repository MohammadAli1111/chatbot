import 'package:chatbot/views/ChatRoom.dart';
import 'package:flutter/material.dart';

import '../MyColors.dart';

class Star extends StatelessWidget {
  static const route = "/Star";

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

           body: SafeArea(

             child: Center(
               child:Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Column(children: [
                         Image.asset(
                           "assets/images/2.png",
                           fit: BoxFit.fill,
                           width: 40,
                           height: 40,
                         ),

                         Text("Welcome to ChatBot AI",style: Theme.of(context).textTheme.bodyText1,),

                       ],),


                       Image.asset(
                         "assets/images/1.png",
                         fit: BoxFit.fill,width: 200,height: 200,

                       ),

                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           padding: const EdgeInsets.all(0.0),
                           elevation: 5,
                           shape:  RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(60)),
                         ),
                         onPressed: () {
                           Navigator.pushNamed(context, ChatState.route);
                         },
                         child: Ink(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             gradient: LinearGradient(colors: [color1,
                               color2],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                           ),
                           child: Container(

                             padding:  EdgeInsets.all(10),
                             constraints:  BoxConstraints(minWidth: 100),
                             child:  Text('GET STARTED', textAlign: TextAlign.center),
                           ),
                         ),

                       ),

                     ]
                 )

             ),
           ),

    );
  }
}

