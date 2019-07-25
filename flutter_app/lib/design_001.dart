
import 'package:flutter/material.dart';
import 'package:flutter_app/ticker_controller.dart';

class Design001 extends StatefulWidget {
  //object from class TickerController
  final TickerController tickerController;
  //constructor
  Design001(this.tickerController);

  @override
  _Design001State createState() => _Design001State();
}

class _Design001State extends State<Design001> {
  @override
  void dispose() {
    widget.tickerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stream Controller"),
      ),
      body:StreamBuilder(
        stream: widget.tickerController.tickerStream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot){
          //Validation DataStream throw snapshot
          if (snapshot.hasError)

          {
            return Text('Error');
          }
          else if (!snapshot.hasData)
          {
            return Text('Error');
          }
          //
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(snapshot.data.toString(),style: TextStyle(
                  fontSize: 48,
                  color: Colors.redAccent,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(onPressed: (){
                      widget.tickerController.increment.add(snapshot.data);
                    },child: Icon(Icons.add),color: Colors.amberAccent,),
                    SizedBox(
                      height: 48.0,
                    ),
                    RaisedButton(onPressed: (){
                      widget.tickerController.decrement.add(snapshot.data);
                    },child: Icon(Icons.remove),color: Colors.amberAccent,),
                  ],
                ),
              ],
            ),
          );
        },),

    );
  }
}
