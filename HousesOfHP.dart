import 'package:flutter/material.dart';
import 'package:portfolio_layout/widgets/author.dart';
import 'package:portfolio_layout/widgets/houses.dart';
import 'package:portfolio_layout/widgets/category_selector.dart';
import 'package:portfolio_layout/widgets/selector_cat.dart';

// void main() => runApp(const BookRecommender());

class houses extends StatefulWidget {
  const houses({Key? key}) : super(key: key);

  @override
  _BookRecommenderState createState() => _BookRecommenderState();
}

class _BookRecommenderState extends State<houses> {
  final myController = TextEditingController();

  get fit => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("HOUSES OF HOGWARTS"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        body: new Stack(children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("HG.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(children: [
            // ScrollDirection: Axis.vertical,
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 60, right: 50),
                    padding: new EdgeInsets.all(20.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch)),
                Image.asset("gryffindor.png", height: 180, width: 180),
                const SizedBox(width: 25),
                const Text(
                  'Gryffindor was one of the four Houses of Hogwarts School of Witchcraft and Wizardry and was founded by Godric Gryffindor. \n Gryffindor instructed the Sorting Hat to choose students possessing characteristics he most valued, such as courage, chivalry, nerve and determination,[4] to be sorted into his house. \n The emblematic animal was a lion, and its colours were scarlet and gold. \n Sir Nicholas de Mimsy-Porpington, also known as "Nearly Headless Nick", was the House ghost. \n Gryffindor corresponded roughly to the element of fire, and it was for this reason that the colours scarlet and gold were chosen to represent the house. \n The colour of fire corresponded to that of a lion as well, with scarlet representing the mane and tail and gold representing the coat.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      // fontFamily: 'Caveat',
                      fontSize: 25),
                ),
              ],
            ),
          ]),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 60, right: 50),
                  padding: new EdgeInsets.all(20.0),
                  child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch)),
              Image.asset("slytherin.png", height: 150, width: 150),
              const SizedBox(width: 25),
              const Text(
                "Slytherin was one of the four Houses at Hogwarts School of Witchcraft and Wizardry, founded by Salazar Slytherin. \n  In establishing the house, Salazar instructed the Sorting Hat to pick students who had a few particular characteristics he most valued. \n  Those characteristics included cunning, resourcefulness, leadership, and ambition. \n  Many Slytherin students tended to clique together (often acquiring leaders) which further exemplified Slytherin's ambitious qualities. \n Examples of these included Draco Malfoy's gang, Merula Snyde's gang, Pansy Parkinson's gang and the Death Eaters. \n The founder highly valued and favoured pure-blood students and the Sorting Hat admitted that it could be a factor when being sorted. \n Students of any blood status could be placed in the house. \n However, a Muggle-born student from that house was considered to be quite rare.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    // fontFamily: 'Caveat',
                    fontSize: 25),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
