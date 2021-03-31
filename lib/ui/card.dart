import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xtemp/logic/drugs.dart';
import 'package:xtemp/ui/list.dart';

class All_cards extends StatefulWidget {
  @override
  _All_cardsState createState() => _All_cardsState();
}

class _All_cardsState extends State<All_cards> {
  var recent_product = [
    {
      "title": "Anti-hypertensive",
    },
    {
      "title": "Anti-neoplastic",
    },
    {
      "title": "Diuretic",
    },
    {
      "title": "Anti-viral",
    },
    {
      "title": "Anti-fungal",
    },
    {
      "title": "Anti-microbial",
    },
    {
      "title": "Anti-emetic",
    },
    {
      "title": "Anti-gout",
    },
    {
      "title": "Anti-secretory",
    },
    {
      "title": "Vitamins",
    },
    {
      "title": "Bile acids",
    },
    {
      "title": "phosphodiesterase inhibitors",
    },
    {
      "title": "carbonic anhydrase inhibitors",
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
          crossAxisCount: 2),
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
    var ob;
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Hero(
          tag: title,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: ()  {
                if (title == "Anti-hypertensive")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_hypertensive,
                                  trade: true,
                                )));
                  }
                else if (title == "Anti-neoplastic")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_neoplastic,
                                  trade: true,
                                )));
                  }
                else if (title == "Diuretic")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Diuretic,
                                  trade: true,
                                )));
                  }
                else if (title == "Anti-viral")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_viral,
                                  trade: true,
                                )));
                  }
                else if (title == "Anti-fungal")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_fungal,
                                  trade: true,
                                )));
                  }
                else if (title == "Anti-microbial")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_microbial,
                                  trade: true,
                                )));
                  }
                else if (title == "Anti-emetic")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_emetic,
                                  trade: true,
                                )));
                  }
                else if (title == "Anti-gout")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_gout,
                                  trade: true,
                                )));
                  }
                else if (title == "Anti-secretory")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Anti_secretory,
                                  trade: true,
                                )));
                  }
                /*else if (title == "Vitamins")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list_pages(drugs: Drugs.Vitamins, trade: true,)))
                  }*/
                else if (title == "Bile acids")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.Bile_acids,
                                  trade: true,
                                )));
                  }
                else if (title == "phosphodiesterase inhibitors")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.phosphodiesterase_inhibitors,
                                  trade: true,
                                )));
                  }
                else if (title == "carbonic anhydrase inhibitors")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => list_pages(
                                  drugs: Drugs.carbonic_anhydrase_inhibitors,
                                  trade: true,
                                )));
                  }
              },
              child: GridTile(
                  footer: Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
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
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white)),
                    ),
                  ),
                  child: Container(
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
