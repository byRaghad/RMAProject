import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listpage extends StatefulWidget {
  @override
  State<listpage> createState() => _HomePageState();
}

class _HomePageState extends State<listpage> {
  int index=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle:  true,title: Text("list Page"),


    backgroundColor: Colors.deepOrange,
    ),
    body:Center(
    child:
    Text("SOON:)"),

    ),);}}