import 'dart:async';

import 'package:flutter/material.dart';

class FuturesScreenView extends StatelessWidget {
  const FuturesScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("futures"),

      ),
      body:Center(
        child: FutureBuilder(
          // builder: (context, snapshot){
          future: waitForFiveSec(),
          builder:(context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            return Text('hello');
          },
        ),
      ),
        
        
    );
  }
  Future waitForFiveSec() async{
    return await Future.delayed(Duration(seconds: 2)).then((value) => true);
  }
}