import 'package:flutter/material.dart';
import 'package:xtemp/ui/card.dart';
import 'package:xtemp/ui/list.dart';
import 'package:xtemp/ui/search.dart';
import 'package:xtemp/logic/drugs.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var drugs = Drugs.drugs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text("Xtemp",style: TextStyle(
            fontSize: 27.0
        ),),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => search()));
          }),
        ],
      ),

      body: ListView(
        //shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.lightBlue,
                    thickness: 0.4,
                  ),
                ),
                Divider(),
                Text("  Drugs  ",
                    style: new TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    )),
                Expanded(
                  child: Divider(
                    color: Colors.lightBlue,
                    thickness: 0.4,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0),
            child: Card(
              elevation: 8.0,
              //color: Colors.orangeAccent,
              margin: new EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              child: InkWell(
                onTap: (){
                  print("nashaarooo");
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => list_pages(drugs: drugs,trade: true,)));
                },
                child: Container(

                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(5.0),
                    /*image: DecorationImage(
                        image: AssetImage("images/p_1.jpg"),
                        fit: BoxFit.cover,
                      ),*/
                  ),

                  child: Center(
                    child: ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 4.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.5, color: Colors.white))),
                        child: ImageIcon(AssetImage('images/pill_3.png'),size: 60,color: Colors.white,),
                      ),
                      title: Text(
                        "Trade Name",
                        style: TextStyle(color: Colors.white.withOpacity(1.0), fontWeight: FontWeight.bold , fontSize: 38.0,fontStyle: FontStyle.italic,

                        ),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0),
            child: Card(
              elevation: 8.0,
              //color: Colors.orangeAccent,
              margin: new EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              child: InkWell(
                onTap: (){
                  print("mohamed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => list_pages(drugs: drugs, trade: false,)));
                },
                child: Container(

                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(5.0),
                    /*image: DecorationImage(
                        image: AssetImage("images/p_1.jpg"),
                        fit: BoxFit.cover,
                      ),*/
                  ),

                  child: Center(
                    child: ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 4.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.5, color: Colors.white))),
                        child: ImageIcon(AssetImage('images/pill_3.png'),size: 60,color: Colors.white,),
                      ),
                      title: Text(
                        "Generic Name",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold , fontSize: 38.0,fontStyle: FontStyle.italic),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 15.0,left: 15.0,bottom: 15.0,top: 5.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.lightBlue,
                    thickness: 0.4,
                  ),
                ),
                Divider(),
                Text("  Categories  ",
                    style: new TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    )),
                Expanded(
                  child: Divider(
                    color: Colors.lightBlue,
                    thickness: 0.4,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0),

            child: All_cards(),

          )





        ],
      ),

    );
  }
}
