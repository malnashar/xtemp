import 'package:flutter/material.dart';
import 'package:xtemp/ui/profile.dart';
import 'package:xtemp/ui/profile.dart';
import 'package:xtemp/logic/drugs.dart';
class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  String msg = "";
  final _controller = TextEditingController();
  /*void initState() {
    super.initState();
    _controller.addListener(() {
      final text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection: TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }*/
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
              /*Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Text("  Choose Filtter  ",
                      style: new TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      )),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),*/
              /*CheckboxListTile(
                value: true,
                onChanged: (bool val) {},
                title: Text("Trade Name",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    )),
                secondary: Icon(
                  Icons.looks_one,
                  color: Colors.lightBlue,
                ),
              ),*/



              /*CheckboxListTile(
                value: true,
                onChanged: (bool val) {},
                title: Text("Generic Name",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    )),
                secondary: Icon(
                  Icons.looks_two,
                  color: Colors.lightBlue,
                ),
              ),*/



              /*CheckboxListTile(
                value: true,
                onChanged: (bool val) {},
                title: Text("Trade or Generic",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    )),
                secondary: Icon(
                  Icons.looks_3,
                  color: Colors.lightBlue,
                ),
              ),*/


              //SizedBox(height: 10.0,),

              /*Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Text("  Another Filters  ",
                      style: new TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      )),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),*/


              //SizedBox(height: 35.0,),


              Container(
                width: 300.0,
                height: 50.0,
                child: new RaisedButton(
                  child: new Text(
                    "Search",
                    style: new TextStyle(fontSize: 22.0, color: Colors.black),
                  ),
                  color: Colors.lightBlue,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  onPressed: () {
                    debugPrint(_controller.text);
                    Map<String,String> m = Drugs.search(_controller.text);
                    if(m == null)
                      {
                        setState(() {
                          msg = "NO MATCHING DRAG!!";
                        });
                      } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile(drug: m,)));
                    }
                  },
                ),
              ),


              SizedBox(height: 25.0,),

              Container(
                width: 300.0,
                height: 50.0,
                child: Text(
                  msg,
                  textAlign: TextAlign.center,
                )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
