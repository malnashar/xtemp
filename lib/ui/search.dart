import 'package:flutter/material.dart';
import 'package:xtemp/ui/profile.dart';
import 'package:xtemp/ui/list.dart';
import 'package:xtemp/logic/drugs.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  String msg = "";
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Search"),
          centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(left: 24.0, right: 24.0, top: 10.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Filter",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              new SizedBox(
                height: 20.0,
              ),
              new TextField(
                controller: _controller,
                style: TextStyle(fontSize: 22.0, color: Colors.grey),
                decoration: new InputDecoration(
                  hintText: "What are you looking for ?",
                  prefixIcon: new Container(
                    margin: EdgeInsets.only(bottom: 3.0, top: 3.0),
                    width: 0.025,
                    height: 0.025,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: new Icon(
                      Icons.search,
                      color: Colors.white70,
                      size: 20.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  contentPadding: EdgeInsets.only(left: 10.0, top: 4.0),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: 300.0,
                height: 50.0,
                child: new OutlinedButton(
                  child: new Text(
                    "Search",
                    style: new TextStyle(fontSize: 22.0, color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    //primary: Colors.teal,
                    backgroundColor: Colors.lightBlue,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    //textStyle: TextStyle(color: Colors.black,fontSize: 40,fontStyle: FontStyle.italic),
                  ),
                  //color: Colors.lightBlue,
                  //shape: new RoundedRectangleBorder(
                  //borderRadius: new BorderRadius.circular(8.0)),
                  onPressed: () {
                    debugPrint(_controller.text);
                    Set<Map<String, String>> m = Drugs.search(_controller.text);
                    if (m.isEmpty) {
                      setState(() {
                        msg = "NO MATCHING DRUG!!";
                      });
                    } else {
                      Navigator.pop(
                          context); //////////////////////////////////////////////////check hnaaaaa//////////////
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => list_pages(drugs: m,trade: false,)));
                    }
                  },
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                  width: 300.0,
                  height: 50.0,
                  child: Text(
                    msg,
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
