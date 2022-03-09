import 'package:flutter/material.dart';
import 'package:portfolio_layout/widgets/author.dart';
import 'package:portfolio_layout/widgets/houses.dart';
import 'package:portfolio_layout/widgets/category_selector.dart';
import 'package:portfolio_layout/widgets/selector_cat.dart';

// void main() => runApp(const HackateersApp());

class author extends StatelessWidget {
  const author({Key? key, Scaffold}) : super(key: key);
  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 5, 5, 5)),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 53, 52, 52),
              title: Center(
                child: Text('KNOW ABOUT YOUR AUTHOR'),
              ), // Appbar
            ),
            body: ListView(
              children: [
                Column(children: [
                  Container(
                      margin: EdgeInsets.only(left: 60, right: 50),
                      padding: new EdgeInsets.all(20.0),
                      child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch)),
                  Image.asset("JK.jpg", height: 180, width: 180),
                  const SizedBox(width: 25),
                  const Text(
                    'Hackateer #1: Mansi Singhal. \nCoder by day, writer by night. I find myself, in bits and pieces, in poetries and proses',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 83, 2, 36),
                        fontFamily: 'Caveat',
                        fontSize: 25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: Icon(Icons.thumb_up),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text(
                          'Like',
                          style: new TextStyle(fontSize: 18.0),
                        ),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Icon(Icons.comment),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text('Comment',
                            style: new TextStyle(fontSize: 18.0)),
                      ),
                    ],
                  ),
                ]), // list view
              ],
            )));
  }
}
