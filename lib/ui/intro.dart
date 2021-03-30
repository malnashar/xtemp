import 'package:flutter/material.dart';
import 'package:xtemp/ui/home.dart';
class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ImageIcon(AssetImage('images/pill_2.png'),size: 110,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0,right: 16.0,left: 16.0 , bottom: 0.0),
                    child: Text(
                      'Xtemp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Text(
                      'Your gate to extemporaneous compounding ',
                      //'restaurants around you',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 22.0,
                        //fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      width: 250.0,
                      height: 50.0,
                      child: new RaisedButton(
                        child: new Text("Start" , style: new TextStyle(fontSize: 28.0, color: Colors.white,fontWeight: FontWeight.bold),),
                        color: Colors.black12,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
