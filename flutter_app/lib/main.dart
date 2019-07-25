import 'package:flutter/material.dart';
import 'desgin_002.dart';
import 'design_001.dart';
import 'ticker_controller.dart';

void main() => runApp(StreamExample());

class StreamExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamExampleHome(),
      theme: ThemeData(
          primaryColor: Colors.teal
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}

class StreamExampleHome extends StatefulWidget {
  @override
  _StreamExampleHomeState createState() => _StreamExampleHomeState();
}
//object from Class TickerController
final TickerController tickerController= TickerController();

class _StreamExampleHomeState extends State<StreamExampleHome> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return Design001(tickerController);
    return Design002(tickerController);
  }

}