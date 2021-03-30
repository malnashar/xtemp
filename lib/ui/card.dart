import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class All_cards extends StatefulWidget {
  @override
  _All_cardsState createState() => _All_cardsState();
}

class _All_cardsState extends State<All_cards> {

  var recent_product = [
    {
      "title": "Anti-neoplastic",

    },
    {
      "title": "Anti-hypertensive",

    },
    /*{
      "title": "Anti-gout",

    },*/

    {
      "title": "Diuretics",

    },
    {
      "title": "Anti-fungal",

    },
    {
      "title": "Anti-secretory",

    },
    {
      "title": "Anti-microbial",

    },
    {
      "title": "Anti-emetic",

    },
    {
      "title": "Anti-viral",

    },
    {
      "title": "Vitamins",

    },

  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      itemCount: recent_product.length,
      shrinkWrap: true,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.15,
          crossAxisSpacing: 1.5,
          mainAxisSpacing: 1.5,
          crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context, int index) {
        return Single_Card(
          title: recent_product[index]["title"],
          pic: recent_product[index]["picture"],
          sub: recent_product[index]["sub"],
        );
      },
    );
  }
}




class Single_Card extends StatelessWidget {
  final title;
  final pic;
  final sub;

  Single_Card({this.title, this.pic, this.sub});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Hero(

          tag: title,
          child: Material(
            color: Colors.transparent,
            child: InkWell(

              onTap: () => {
                print('ads')
              },
              child: GridTile(


                  footer: Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0) , bottomRight: Radius.circular(20.0)),
                    ),
                    height: 50,
                    child: ListTile(
                      /*title: Text(
                        "$title",
                        style: new TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.red,
                        ),
                      ),*/
                      /*subtitle: Text(
                        "$title",
                        style: new TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            decoration: TextDecoration.lineThrough),
                      ),*/
                      //leading: Text(name , style: new TextStyle( fontWeight: FontWeight.bold),),
                      leading: new Text(title,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0,color: Colors.white)),
                    ),
                  ),
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  )
                /*Image.asset(
                    pic,
                    fit: BoxFit.cover,
                  ),*/


              ),
            ),
          )),
    );

  }
}
