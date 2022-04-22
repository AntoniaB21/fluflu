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

              Container(
                 margin: EdgeInsets.only(
                  top: 400,
                ),
                padding: EdgeInsets.only(
                  top: 20,
                  bottom:20,
                  right: 40,
                  left: 40
                ),
                child: Text(
                 this.Data["summary"]
                ),
              )
            ],
          ),
         Stack(
           children: [
             Container(
               child: Text(
                 (this.Data["runtime"]).toString(),
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
             )
           ],
         ),

         Stack(
           children: [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  Text('Genres'),
                  Text(
                    (this.Data["genres"]).toString()),
                ],
              ),
              
      ],
         )
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