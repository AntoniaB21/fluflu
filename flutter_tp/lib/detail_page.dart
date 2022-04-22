import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_tp/home_animation.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class DetailPage extends StatelessWidget{
  var Data;

  DetailPage(this.Data);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 202, 212),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.network(this.Data["image"]["medium"],
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
                )
              ),

              Center(child: Container(
                margin: EdgeInsets.only(
                  top: 400,
                ),
                padding: EdgeInsets.only(
                  top:20,
                  bottom:20,
                  right: 20,
                  left: 20
                ),
                color: Colors.blue,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(this.Data["name"]),
                ),
              ),),

              Container(
                 margin: EdgeInsets.only(
                  top: 450,
                ),
                padding: EdgeInsets.only(
                  top:20,
                  bottom:20,
                  right: 40,
                  left: 40
                ),
                color: Colors.grey,
                child: Text(
                 this.Data["summary"]
                ),
              )
            ],
          ),
         
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff191826),
        title:  Text(
          this.Data["name"],
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0.0,
        centerTitle: false,
      ),
     );
  }
}