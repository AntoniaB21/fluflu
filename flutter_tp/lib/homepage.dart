import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HomePageShow extends StatelessWidget {
  getShows() async {
    var url;
    url = await http.get(Uri.parse('https://api.tvmaze.com/shows'));

    return convert.json.decode(url.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191826),
      appBar: AppBar(
        backgroundColor: Color(0xff191826),
        title:  Text(
          'Shows',
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0.0,
        centerTitle: false,
      ),
      body: FutureBuilder(
        future: getShows(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error'),
            );
          }

          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
              return Row(
                children: [
                  Container(
                    height: 250,
                    alignment: Alignment.center,
                    child: Card(
                      child: Image.network(
                        snapshot.data[index]["image"]["medium"]
                      )
                    )
                  ),
                  Container(),
                ],
              );
            });
          }
          return Center(child: CircularProgressIndicator(),);
        },
      )
    );
  }
}