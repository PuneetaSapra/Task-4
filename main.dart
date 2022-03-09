import 'package:flutter/material.dart';
import 'package:portfolio_layout/widgets/author.dart';
import 'package:portfolio_layout/widgets/houses.dart';
import 'package:portfolio_layout/widgets/category_selector.dart';
import 'package:portfolio_layout/widgets/selector_cat.dart';

void main() => runApp(const PotterHeads());

class PotterHeads extends StatefulWidget {
  const PotterHeads({Key? key}) : super(key: key);

  @override
  _PotterHeadsState createState() => _PotterHeadsState();
}

class _PotterHeadsState extends State<PotterHeads> {
  String input = "";
  final myController = TextEditingController();
  get fit => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 8, 8, 8),
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'HP.jpeg',
                    fit: BoxFit.contain,
                    height: 45,
                  ),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Hello PotterHead'))
                ],
              ),
              backgroundColor: Color.fromARGB(255, 10, 10, 10),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            body: ListView(children: <Widget>[
              CategorySelector(),
              Row(children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10.0),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(0.0),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 5, 24, 9),
                      height: 150.0,
                      minWidth: 625.0,
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      child: new Text("KNOW ABOUT THE CHARACTERS"),
                      //color: Color.fromARGB(255, 5, 34, 17),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const BookRecommender(),
                                settings: const RouteSettings()))
                      },
                      splashColor: Color.fromARGB(255, 131, 172, 140),
                    )),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(0.0),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 5, 24, 9),
                      height: 150.0,
                      minWidth: 625.0,
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      child: new Text("KNOW ABOUT THE HOUSES"),
                      //color: Color.fromARGB(255, 5, 34, 17),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const houses(),
                            ))
                      },
                      splashColor: Color.fromARGB(255, 131, 172, 140),
                    )),
              ]),
              // children: <Widget>[
              new Container(
                color: Colors.grey[200],
                child: new Image.asset('assets/HG.jpg'),
                alignment: Alignment.center,
              ),
              // Container(
              //   margin: const EdgeInsets.all(10.0),
              //   alignment: Alignment.center,
              //   padding: EdgeInsets.all(0.0),
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage("HG.jpg"),
              //     ),
              //   ),
              // ),
              // Stack(children: <Widget>[
              Column(children: <Widget>[
                // Row(children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 5, 24, 9),
                      height: 100.0,
                      minWidth: 600.0,
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      child: new Text("KNOW ABOUT THE AUTHOR"),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const author(),
                            ))
                      },
                      splashColor: Color.fromARGB(255, 131, 172, 140),
                    )),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 5, 24, 9),
                      height: 100.0,
                      minWidth: 600.0,
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      child: new Text("TAKE A QUIZ TO TEST YOUR KNOWLEDGE"),
                      //color: Color.fromARGB(255, 5, 34, 17),
                      onPressed: () => {},
                      splashColor: Color.fromARGB(255, 131, 172, 140),
                    )),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 5, 24, 9),
                      height: 100.0,
                      minWidth: 600.0,
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      child: new Text("KNOW YOUR PATRONUS"),
                      //color: Color.fromARGB(255, 5, 34, 17),
                      onPressed: () => {},
                      splashColor: Color.fromARGB(255, 131, 172, 140),
                    )),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 5, 24, 9),
                      height: 100.0,
                      minWidth: 600.0,
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      child: new Text("LEARN MORE ABOUT THE SERIES"),
                      //color: Color.fromARGB(255, 5, 34, 17),
                      onPressed: () => {},
                      splashColor: Color.fromARGB(255, 131, 172, 140),
                    )),
              ])
            ])));
  }
}
