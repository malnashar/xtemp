import 'package:flutter/material.dart';
import 'package:xtemp/ui/profile.dart';

class list_pages extends StatefulWidget {
  final Set<Map<String, String>> drugs;
  final bool trade;
  list_pages({Key key, this.drugs, this.trade}) : super(key: key);
  @override
  _list_pagesState createState() => _list_pagesState();
}

class _list_pagesState extends State<list_pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text("Drugs"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: widget.drugs.length,
          itemBuilder: (BuildContext context, int index) {
            return _MakeCard(
              drug: widget.drugs.elementAt(index),
              trade: widget.trade,
            );
          },
        ),
      ),
    );
  }

//final makeCard =
}

class _MakeCard extends StatelessWidget {
  final Map<String, String> drug;
  final bool trade;
  _MakeCard({this.drug, this.trade});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Profile(
                      drug: drug,
                    )));
      },
      child: Card(
        elevation: 8.0,
        color: Colors.transparent,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20.0)),
          child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                padding: EdgeInsets.only(right: 12.0),
                decoration: new BoxDecoration(
                    border: new Border(
                        right:
                            new BorderSide(width: 1.0, color: Colors.white24))),
                child: ImageIcon(
                  AssetImage('images/pill_3.png'),
                  size: 60,
                  color: Colors.white,
                ),
              ),
              title: Text(
                trade ? drug['Trade Name'] : drug['Generic Name'],
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

              //subtitle: Text("any details here.....",
              // style: TextStyle(color: Colors.white70)),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.white, size: 30.0)),
        ),
      ),
    );
  }
}
