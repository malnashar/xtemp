import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class Profile extends StatelessWidget {
  final Map<String, String> drug;
  Profile({this.drug});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text(drug['Trade Name']),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: drug.length,
          itemBuilder: (BuildContext context, int index) {
            return c(context, drug.keys.elementAt(index),
                drug.values.elementAt(index));
          },
        ),
      ),
    );
  }

  Widget c(BuildContext context, String title, String det) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(20.0),
          ),
          //color: Colors.red,
          child: ExpansionCard(
            backgroundColor: Colors.transparent,
            borderRadius: 20.0,
            margin: EdgeInsets.all(5.0),
            //backgroundColor: Colors.red,
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  det,
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}

class Single_Profile extends StatelessWidget {
  final title;
  final details;

  Single_Profile({
    this.title,
    this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionCard(
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Header",
              ),
              Text(
                "Sub",
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              "Content goes over here !",
            ),
          )
        ],
      ),
    );
  }
}
