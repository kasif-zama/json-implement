
import 'dart:convert';

import 'package:flutter/material.dart';

void main() { runApp(MaterialApp(debugShowCheckedModeBanner: false,
title:"Json",
theme:ThemeData(
  primarySwatch:Colors.cyan,
),
home:Homepage(),
));
}

class Homepage extends StatefulWidget {
  // This widget is the root of your application.
  @override
_HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage>{
@override

Widget build(BuildContext context) {
  return Scaffold(
backgroundColor: Colors.grey,
body: FutureBuilder(
  future: DefaultAssetBundle.of(context).loadString("asset/data.json"),
  builder:(context,snapshot) {
    var mydata=json.decode(snapshot.data.toString());
    return Center(child: Text(mydata["name"],
    style: TextStyle(
      fontSize: 25.0
    ),
    ),

    );
  },
 )
  );
}
}
     
